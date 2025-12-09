import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class MedicineCard extends StatelessWidget {
  final Medicine medicine;

  const MedicineCard({super.key, required this.medicine});

  String _formatTimeOfDay(List<String> timeOfDay) {
    return timeOfDay
        .map((time) {
          switch (time.toLowerCase()) {
            case 'morning':
              return 'Morning';
            case 'afternoon':
              return 'Afternoon';
            case 'evening':
              return 'Evening';
            case 'night':
              return 'Night';
            default:
              return time;
          }
        })
        .join(', ');
  }

  String _formatFoodInstruction(String instruction) {
    switch (instruction.toLowerCase()) {
      case 'after_food':
        return 'After food';
      case 'before_food':
        return 'Before food';
      case 'with_food':
        return 'With food';
      case 'empty_stomach':
        return 'On empty stomach';
      default:
        return instruction;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Format dosage string
    final dosageText =
        '${medicine.dosage}, ${medicine.frequency} time${medicine.frequency > 1 ? 's' : ''} a day';

    // Format instructions string
    final timeOfDayText = _formatTimeOfDay(medicine.timeOfDay);
    final foodInstructionText = _formatFoodInstruction(
      medicine.foodInstruction,
    );
    final instructionsText =
        'For ${medicine.numberOfDays} day${medicine.numberOfDays > 1 ? 's' : ''} • $timeOfDayText • $foodInstructionText';

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2F2C) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.borderDark : AppColors.borderLight,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF05c7a7).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.medication,
              color: Color(0xFF05c7a7),
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicine.name,
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  dosageText,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFFD1D5DB)
                        : AppColors.textTertiaryLight,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  instructionsText,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? AppColors.textTertiaryDark
                        : AppColors.textTertiaryLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
