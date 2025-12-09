// empty_prescriptions_state.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class EmptyPrescriptionsState extends StatelessWidget {
  const EmptyPrescriptionsState({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Medication Icon
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              color: const Color(0xFF04798b).withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.medication,
              color: Color(0xFF04798b),
              size: 64,
            ),
          ),

          const SizedBox(height: 24),

          // Title
          Text(
            'No Prescriptions Yet',
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          ),

          const SizedBox(height: 8),

          // Description
          Text(
            'Your prescriptions will appear here after your appointments.',
            textAlign: TextAlign.center,
            style: GoogleFonts.lexend(
              fontSize: 16,
              color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
            ),
          ),
        ],
      ),
    );
  }
}
