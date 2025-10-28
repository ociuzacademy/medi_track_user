import 'package:flutter/material.dart';
import 'package:medi_track/modules/home_module/widgets/blood_donation_banner.dart';
import 'package:medi_track/modules/home_module/widgets/healthy_tip_carousel.dart';
import 'package:medi_track/modules/home_module/widgets/quick_actions_grid.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointment_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      padding: EdgeInsets.all(screenSize.width * 0.04), // Responsive padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Upcoming Appointment
          const UpcomingAppointmentCard(),

          SizedBox(height: screenSize.height * 0.03), // Responsive spacing
          // Quick Actions
          const QuickActionsGrid(),

          SizedBox(height: screenSize.height * 0.03),

          // Health Tips
          const HealthTipsCarousel(),

          SizedBox(height: screenSize.height * 0.03),

          // Blood Donation Banner
          const BloodDonationBanner(),

          SizedBox(height: screenSize.height * 0.02),
        ],
      ),
    );
  }
}
