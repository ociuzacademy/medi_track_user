// cancelled_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/bottom_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/details_list.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_header.dart';

class CancelledAppointmentDetailsPage extends StatelessWidget {
  const CancelledAppointmentDetailsPage({super.key});

  static Route route() => MaterialPageRoute(
    builder: (_) => const CancelledAppointmentDetailsPage(),
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
        backgroundColor: isDark ? const Color(0xFF0f2023) : Colors.white,
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111718),
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
                  // Main Content Card
                  Container(
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        // Status Header
                        const StatusHeader(),

                        const SizedBox(height: 24),

                        // Doctor Card
                        const DoctorCard(),

                        const SizedBox(height: 24),

                        // Details List
                        const DetailsList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Buttons
          const BottomButtons(),
        ],
      ),
    );
  }
}
