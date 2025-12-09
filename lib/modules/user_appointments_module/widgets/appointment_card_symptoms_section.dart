// appointment_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

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
        border: Border(top: BorderSide(color: AppColors.border(context))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Symptoms',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.textTertiary(context),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            appointment.symptoms,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppColors.textPrimary(context),
            ),
          ),
        ],
      ),
    );
  }
}
