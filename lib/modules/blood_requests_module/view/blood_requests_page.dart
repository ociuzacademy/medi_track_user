// pages/blood_requests_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_requests_module/models/blood_request.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/blood_request_card.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/date_header.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/empty_state.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/pull_to_refresh_indicator.dart';

class BloodRequestsPage extends StatefulWidget {
  const BloodRequestsPage({super.key});

  @override
  State<BloodRequestsPage> createState() => _BloodRequestsPageState();

  static route() =>
      MaterialPageRoute(builder: (_) => const BloodRequestsPage());
}

class _BloodRequestsPageState extends State<BloodRequestsPage> {
  // Use ValueNotifiers instead of State fields
  late final ValueNotifier<List<BloodRequest>> _bloodRequests;
  late final ValueNotifier<bool> _isLoading;

  @override
  void initState() {
    super.initState();
    _bloodRequests = ValueNotifier<List<BloodRequest>>([
      BloodRequest(
        id: '1',
        patientName: 'Eleanor Vance',
        bloodGroup: 'A+',
        unitsRequired: 2,
        urgency: Urgency.high,
        requestTime: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      BloodRequest(
        id: '2',
        patientName: 'Marcus Holloway',
        bloodGroup: 'O-',
        unitsRequired: 1,
        urgency: Urgency.medium,
        requestTime: DateTime.now().subtract(const Duration(hours: 4)),
      ),
      BloodRequest(
        id: '3',
        patientName: 'Javier Esposito',
        bloodGroup: 'B+',
        unitsRequired: 3,
        urgency: Urgency.low,
        requestTime: DateTime.now().subtract(const Duration(days: 1, hours: 3)),
      ),
    ]);

    _isLoading = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    _bloodRequests.dispose();
    _isLoading.dispose();
    super.dispose();
  }

  Future<void> _refreshData() async {
    _isLoading.value = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    _isLoading.value = false;
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
            ? const Color(0xFF221010)
            : const Color(0xFFF8F6F6),
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
          ? const Color(0xFF221010)
          : const Color(0xFFF8F6F6),
      body: RefreshIndicator(
        onRefresh: _refreshData,
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
