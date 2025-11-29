// appointment_summary_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/appointment_feedback_detail_row.dart';

class AppointmentSummaryCard extends StatelessWidget {
  const AppointmentSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF182c29) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Appointment Summary',
            style: GoogleFonts.lexend(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.015,
              color: isDark ? Colors.white : const Color(0xFF111817),
            ),
          ),
          const SizedBox(height: 12),
          const AppointmentFeedbackDetailRow(
            icon: Icons.person,
            title: 'Dr. Jane Doe',
            subtitle: 'Cardiologist',
            showDivider: true,
          ),
          const AppointmentFeedbackDetailRow(
            icon: Icons.local_hospital,
            title: 'Cardiology Department',
            showDivider: true,
          ),
          const AppointmentFeedbackDetailRow(
            icon: Icons.calendar_today,
            title: 'Nov 15, 2023, 10:30 AM',
            showDivider: true,
          ),
          const AppointmentFeedbackDetailRow(
            icon: Icons.confirmation_number,
            title: 'Token: C-12',
          ),
        ],
      ),
    );
  }
}
