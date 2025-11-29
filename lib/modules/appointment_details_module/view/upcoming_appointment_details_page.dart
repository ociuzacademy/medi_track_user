// appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/doctor_info_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/live_status_card.dart';

class UpcomingAppointmentDetailsPage extends StatelessWidget {
  const UpcomingAppointmentDetailsPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const UpcomingAppointmentDetailsPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Appointment Details',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : const Color(0xFF212121),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFF8FAFB),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF212121),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFF8FAFB),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  // Live Status Card
                  LiveStatusCard(),

                  SizedBox(height: 16),

                  // Doctor Info Card
                  DoctorInfoCard(),
                ],
              ),
            ),
          ),

          // Footer Buttons
          FooterButtons(),
        ],
      ),
    );
  }
}
