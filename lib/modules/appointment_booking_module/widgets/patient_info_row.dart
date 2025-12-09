// patient_info_section.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PatientInfoRow extends StatelessWidget {
  const PatientInfoRow({
    super.key,
    required this.label,
    required this.value,
    required this.isDark,
  });

  final String label;
  final String value;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: (isDark ? Colors.white : AppColors.textPrimaryLight).withValues(
              alpha: 0.8,
            ),
          ),
        ),
      ],
    );
  }
}
