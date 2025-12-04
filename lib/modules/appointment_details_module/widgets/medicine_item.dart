// medical_sections.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/medicine_detail_chip.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({
    super.key,
    required this.medicineName,
    required this.dosage,
    required this.frequency,
    required this.instructions,
  });

  final String medicineName;
  final String dosage;
  final String frequency;
  final String instructions;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2527) : const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isDark ? const Color(0xFF37474F) : const Color(0xFFE0E0E0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Medicine Name and Dosage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                medicineName,
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : const Color(0xFF212121),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF00796B).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  dosage,
                  style: GoogleFonts.lexend(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF00796B),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Frequency
          MedicineDetailChip(icon: Icons.schedule, text: frequency),
          const SizedBox(height: 8),
          // Instructions
          Text(
            'Instructions: $instructions',
            style: GoogleFonts.lexend(
              fontSize: 12,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }
}
