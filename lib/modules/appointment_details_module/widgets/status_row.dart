// appointment_details.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusRow extends StatelessWidget {
  const StatusRow({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFdbe5e6),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Status',
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF5f868c),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(
                0xFFFFC107,
              ).withValues(alpha: isDark ? 0.3 : 0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Rescheduled',
              style: GoogleFonts.lexend(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isDark
                    ? const Color(0xFFFFC107)
                    : const Color(0xFF996500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
