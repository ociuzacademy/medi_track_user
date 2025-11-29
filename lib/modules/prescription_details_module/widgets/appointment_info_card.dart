// appointment_info_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/appointment_prescription_detail_row.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/appointment_token_row.dart';

class AppointmentInfoCard extends StatelessWidget {
  const AppointmentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2F2C) : Colors.white,
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
            'Appointment Info',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          const AppointmentPrescriptionDetailRow(
            icon: Icons.calendar_today,
            label: 'Date & Time',
            value: '12 August 2024, 10:30 AM',
          ),
          const SizedBox(height: 16),
          AppointmentTokenRow(context: context),
        ],
      ),
    );
  }
}
