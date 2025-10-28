// status_chips.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusChips extends StatelessWidget {
  const StatusChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          // Status: Completed Chip
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle,
                  color: const Color(0xFF4CAF50),
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  'Status: Completed',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF4CAF50),
                  ),
                ),
              ],
            ),
          ),

          // Payment: Paid Chip
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.credit_card,
                  color: const Color(0xFF4CAF50),
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  'Payment: Paid',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF4CAF50),
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
