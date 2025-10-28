// appointment_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointments_module/models/appointment.dart';

class AppointmentCardSymptomsSection extends StatelessWidget {
  const AppointmentCardSymptomsSection({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final Appointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Symptoms',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            appointment.symptoms,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: isDark ? Colors.white : const Color(0xFF111518),
            ),
          ),
        ],
      ),
    );
  }
}
