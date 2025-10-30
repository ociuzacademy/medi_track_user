// medical_sections.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicineDetailChip extends StatelessWidget {
  const MedicineDetailChip({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF263238) : const Color(0xFFE0F2F1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
            color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF00796B),
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: GoogleFonts.lexend(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF00796B),
            ),
          ),
        ],
      ),
    );
  }
}
