// rescheduled_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/appointment_details.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_button.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/rescheduled_doctor_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/warning_banner.dart';

class RescheduledAppointmentDetailsPage extends StatelessWidget {
  const RescheduledAppointmentDetailsPage({super.key});

  static Route route() => MaterialPageRoute(
    builder: (_) => const RescheduledAppointmentDetailsPage(),
  );

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
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111718),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  // Warning Banner
                  WarningBanner(),

                  SizedBox(height: 16),

                  // Action Buttons
                  ActionButtons(),

                  SizedBox(height: 16),

                  // Doctor Card
                  RescheduledDoctorCard(),

                  SizedBox(height: 16),

                  // Appointment Details
                  AppointmentDetails(),
                ],
              ),
            ),
          ),

          // Footer Button
          FooterButton(),
        ],
      ),
    );
  }
}
