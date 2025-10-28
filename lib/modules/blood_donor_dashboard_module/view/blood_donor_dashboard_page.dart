import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/active_blood_requests.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donation_history.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donor_profile_card.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/notifications_section.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/quick_actions.dart';

class BloodDonorDashboardPage extends StatelessWidget {
  const BloodDonorDashboardPage({super.key});

  static route() =>
      MaterialPageRoute(builder: (_) => BloodDonorDashboardPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Blood Donor Dashboard',
          style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: const NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuCofWcqgg7gKVOVBEhIF-zqj2E0bEqTYN4lcpHfXeBKdlvYS0qNYDHBw9y4J265ZIqe77wk49cStcqOy7OmwvTKsoyLEwu9Gdz6RtMBQtXDBqRVSlRsuUuK0bNOgzAbkQMFiML3vcdHRYLElwLqWdj49QIsPC_R4Wvrs0NRiAXBoMPGrsFMnTKk1-nTJV58jZJRZH2NAnSKvWQ5kwQalNQFxW_WNa_q_tvg6WaeLg35TvAzJybyXwkmiHa7SLOIqlZcLrZjwS7QOSvl',
              ),
              backgroundColor: Colors.grey[300],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Donor Profile Card
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DonorProfileCard(),
            ),

            // Active Blood Requests
            const ActiveBloodRequests(),

            // Notifications
            const NotificationsSection(),

            // Donation History
            const DonationHistory(),

            // Quick Actions
            const QuickActions(),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
