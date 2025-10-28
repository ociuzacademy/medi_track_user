// appointment_info_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentPrescriptionDetailRow extends StatelessWidget {
  const AppointmentPrescriptionDetailRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF05c7a7).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF05c7a7), size: 20),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : const Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
