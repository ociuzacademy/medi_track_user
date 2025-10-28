// completed_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/appointment_details_list.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_action_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/medical_sections.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_chips.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_profile_header.dart';

class CompletedAppointmentDetailsPage extends StatelessWidget {
  const CompletedAppointmentDetailsPage({super.key});

  static Route route() => MaterialPageRoute(
    builder: (_) => const CompletedAppointmentDetailsPage(),
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
            color: isDark ? Colors.white : const Color(0xFF212121),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark ? const Color(0xFF0f2023) : Colors.white,
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF212121),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Main Card Container
                  Container(
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Doctor Profile Header
                        const DoctorProfileHeader(),

                        // Status Chips
                        const StatusChips(),

                        // Appointment Details
                        const AppointmentDetailsList(),

                        // Divider
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          color: isDark
                              ? const Color(0xFF37474F)
                              : const Color(0xFFE0E0E0),
                        ),

                        // Medical Sections
                        const MedicalSections(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Footer Action Buttons
          const FooterActionButtons(),
        ],
      ),
    );
  }
}
