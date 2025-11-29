// pages/blood_requests_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_requests_module/helper/blood_request_data.dart';
import 'package:medi_track/modules/blood_requests_module/models/blood_request.dart';
import 'package:medi_track/modules/blood_requests_module/utils/blood_request_helper.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/blood_request_card.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/date_header.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/empty_state.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/pull_to_refresh_indicator.dart';

class BloodRequestsPage extends StatefulWidget {
  const BloodRequestsPage({super.key});

  @override
  State<BloodRequestsPage> createState() => _BloodRequestsPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const BloodRequestsPage());
}

class _BloodRequestsPageState extends State<BloodRequestsPage> {
  late final BloodRequestHelper _bloodRequestHelper;

  late final ValueNotifier<List<BloodRequest>> _bloodRequests;
  late final ValueNotifier<bool> _isLoading;

  @override
  void initState() {
    super.initState();
    _bloodRequests = ValueNotifier<List<BloodRequest>>(
      BloodRequestData.bloodRequests,
    );

    _isLoading = ValueNotifier<bool>(false);
    _bloodRequestHelper = BloodRequestHelper(isLoading: _isLoading);
  }

  @override
  void dispose() {
    _bloodRequests.dispose();
    _isLoading.dispose();
    super.dispose();
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
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications button press
            },
          ),
        ],
      ),
      backgroundColor: isDark
          ? const Color(0xFF0F1A2A)
          : const Color(0xFFF0F4F8),
      body: RefreshIndicator(
        onRefresh: _bloodRequestHelper.refreshData,
        child: CustomScrollView(
          slivers: [
            // Pull to refresh indicator
            SliverToBoxAdapter(
              child: ValueListenableBuilder<bool>(
                valueListenable: _isLoading,
                builder: (context, isLoading, _) {
                  return isLoading
                      ? const LinearProgressIndicator()
                      : const PullToRefreshIndicator();
                },
              ),
            ),

            // Blood requests list or empty state
            ValueListenableBuilder<List<BloodRequest>>(
              valueListenable: _bloodRequests,
              builder: (context, requests, _) {
                if (requests.isEmpty) {
                  return const SliverFillRemaining(child: EmptyState());
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final request = requests[index];

                    // Group by date (simplified)
                    bool showDateHeader = index == 0;
                    if (index > 0) {
                      final previousRequest = requests[index - 1];
                      showDateHeader =
                          request.formattedTime !=
                          previousRequest.formattedTime;
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
                            child: DateHeader(text: request.formattedTime),
                          ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.size.width * 0.04,
                          ),
                          child: BloodRequestCard(request: request),
                        ),
                      ],
                    );
                  }, childCount: requests.length),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
