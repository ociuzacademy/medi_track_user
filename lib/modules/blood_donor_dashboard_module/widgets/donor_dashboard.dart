// [file name]: donor_dashboard.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/active_blood_requests.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donation_history.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donor_profile_card.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/notifications_section.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/quick_actions.dart';

class DonorDashboard extends StatelessWidget {
  const DonorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),

          // Donor Profile Card
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DonorProfileCard(),
          ),

          // Active Blood Requests
          ActiveBloodRequests(),

          // Notifications
          NotificationsSection(),

          // Donation History
          DonationHistory(),

          // Quick Actions
          QuickActions(),

          SizedBox(height: 24),
        ],
      ),
    );
  }
}
