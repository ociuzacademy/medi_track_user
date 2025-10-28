// appointment_info_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentTokenRow extends StatelessWidget {
  const AppointmentTokenRow({super.key, required this.context});

  final BuildContext context;

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
          child: Icon(
            Icons.confirmation_number,
            color: const Color(0xFF05c7a7),
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Token Number',
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '#A-204',
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : const Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF065F46) : const Color(0xFFD1FAE5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            'Completed',
            style: GoogleFonts.lexend(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isDark ? const Color(0xFF34D399) : const Color(0xFF065F46),
            ),
          ),
        ),
      ],
    );
  }
}
