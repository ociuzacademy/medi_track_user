// pages/blood_requests_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/blood_requests_module/utils/blood_request_helper.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/blood_request_card.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/date_header.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/empty_state.dart';

class BloodRequestsPage extends StatefulWidget {
  const BloodRequestsPage({super.key});

  @override
  State<BloodRequestsPage> createState() => _BloodRequestsPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const BloodRequestsPage());
}

class _BloodRequestsPageState extends State<BloodRequestsPage> {
  late final BloodRequestHelper _bloodRequestHelper;

  @override
  void initState() {
    super.initState();
    _bloodRequestHelper = BloodRequestHelper(context: context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloodRequestHelper.getAllBloodRequests();
    });
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Blood Requests',
          style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0F1A2A)
            : const Color(0xFFF0F4F8),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _bloodRequestHelper.getAllBloodRequests,
          ),
        ],
      ),
      backgroundColor: isDark
          ? const Color(0xFF0F1A2A)
          : const Color(0xFFF0F4F8),
      body: BlocBuilder<AllBloodRequestsCubit, AllBloodRequestsState>(
        builder: (context, state) {
          return switch (state) {
            AllBloodRequestsInitial() => const CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
            AllBloodRequestsLoading() => const CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
            AllBloodRequestsSuccess(:final data) => CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final request = data[index];
                    final formattedDate = _formatDate(request.donationDate);

                    // Group by date
                    bool showDateHeader = index == 0;
                    if (index > 0) {
                      final previousRequest = data[index - 1];
                      final previousFormattedDate = _formatDate(
                        previousRequest.donationDate,
                      );
                      showDateHeader = formattedDate != previousFormattedDate;
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (showDateHeader)
                          Padding(
                            padding: EdgeInsets.only(
                              left: mediaQuery.size.width * 0.04,
                              right: mediaQuery.size.width * 0.04,
                            ),
                            child: DateHeader(text: formattedDate),
                          ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.size.width * 0.04,
                          ),
                          child: BloodRequestCard(request: request),
                        ),
                      ],
                    );
                  }, childCount: data.length),
                ),
              ],
            ),
            AllBloodRequestsError(:final message) => CustomErrorWidget(
              errorMessage: message,
              isDark: isDark,
              onRetry: _bloodRequestHelper.getAllBloodRequests,
            ),
            AllBloodRequestsEmpty() => const CustomScrollView(
              slivers: [SliverFillRemaining(child: EmptyState())],
            ),
          };
        },
      ),
    );
  }
}
