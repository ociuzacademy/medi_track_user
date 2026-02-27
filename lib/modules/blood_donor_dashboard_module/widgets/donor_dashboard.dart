// [file name]: donor_dashboard.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/utils/donor_dashboard_helper.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/active_blood_requests.dart';
import 'package:medi_track/modules/blood_donation_history_module/view/blood_donation_history_page.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/active_blood_requests_section_header.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/blood_donation_history_item.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donor_profile_card.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/notifications_section.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/notifications_section_header.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/quick_actions.dart';
import 'package:google_fonts/google_fonts.dart';

class DonorDashboard extends StatefulWidget {
  const DonorDashboard({super.key});

  @override
  State<DonorDashboard> createState() => _DonorDashboardState();
}

class _DonorDashboardState extends State<DonorDashboard> {
  late DonorDashboardHelper _donorDashboardHelper;
  @override
  void initState() {
    super.initState();
    _donorDashboardHelper = DonorDashboardHelper(context: context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _donorDashboardHelper.bloodDonationHistoryInitial();
      _donorDashboardHelper.allBloodRequestsInitial();
      _donorDashboardHelper.userBloodRequestsInitial();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),

          // Donor Profile Card
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DonorProfileCard(),
          ),

          // Active Blood Requests
          BlocBuilder<AllBloodRequestsCubit, AllBloodRequestsState>(
            builder: (context, state) {
              return switch (state) {
                AllBloodRequestsInitial() => const SizedBox.shrink(),
                AllBloodRequestsLoading() => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: CircularProgressIndicator()),
                ),
                AllBloodRequestsSuccess(:final data) => ActiveBloodRequests(
                  allBloodRequests: data,
                ),
                AllBloodRequestsError(:final message) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text(message)),
                ),
                AllBloodRequestsEmpty() => Column(
                  children: [
                    ActiveBloodRequestsSectionHeader(isDark: isDark),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(
                          'No blood requests found',
                          style: GoogleFonts.lexend(
                            color: isDark ? Colors.white70 : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              };
            },
          ),

          // Notifications
          BlocBuilder<UserBloodRequestsCubit, UserBloodRequestsState>(
            builder: (context, state) {
              return switch (state) {
                UserBloodRequestsInitial() => const SizedBox.shrink(),
                UserBloodRequestsLoading() => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: CircularProgressIndicator()),
                ),
                UserBloodRequestsSuccess(:final bloodRequests) =>
                  NotificationsSection(notifications: bloodRequests),
                UserBloodRequestsError(:final message) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text(message)),
                ),
                UserBloodRequestsEmpty() => Column(
                  children: [
                    NotificationsSectionHeader(isDark: isDark),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(
                          'No blood requests found',
                          style: GoogleFonts.lexend(
                            color: isDark ? Colors.white70 : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              };
            },
          ),

          // Donation History
          Column(
            children: [
              // Section Header
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Donation History',
                      style: GoogleFonts.lexend(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.015,
                        color: isDark ? Colors.white : const Color(0xFF111418),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          BloodDonationHistoryPage.route(),
                        );
                      },
                      child: Text(
                        'View All',
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF137fec),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Content
              BlocBuilder<DonorHistoryCubit, DonorHistoryState>(
                builder: (context, state) {
                  return switch (state) {
                    DonorHistoryInitial() => const SizedBox.shrink(),
                    DonorHistoryLoading() => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    DonorHistorySuccess(:final bloodDonationHistoryList) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: bloodDonationHistoryList.length > 2
                              ? 2
                              : bloodDonationHistoryList.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final donation = bloodDonationHistoryList[index];
                            return BloodDonationHistoryItem(
                              date: donation.donationDate,
                              isDark: isDark,
                            );
                          },
                        ),
                      ),
                    DonorHistoryError(:final message) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(child: Text(message)),
                    ),
                    DonorHistoryEmpty() => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(
                          'No donations found',
                          style: GoogleFonts.lexend(
                            color: isDark ? Colors.white70 : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  };
                },
              ),
            ],
          ),

          // Quick Actions
          const QuickActions(),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
