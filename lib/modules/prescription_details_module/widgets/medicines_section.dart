// medicines_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/medicine_card.dart';

class MedicinesSection extends StatelessWidget {
  const MedicinesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            'Prescribed Medicines',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111827),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: const [
            MedicineCard(
              medicineName: 'Paracetamol 500mg',
              dosage: '1 tablet, 3 times a day',
              instructions: 'For 5 days, after food',
            ),
            SizedBox(height: 12),
            MedicineCard(
              medicineName: 'Azithromycin 250mg',
              dosage: '1 tablet, once a day',
              instructions: 'For 3 days, before breakfast',
            ),
          ],
        ),
      ],
    );
  }
}
