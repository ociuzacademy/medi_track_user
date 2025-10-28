// status_header.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusHeader extends StatelessWidget {
  const StatusHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Icon
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xFFE53935).withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.event_busy,
            color: Color(0xFFE53935),
            size: 36,
          ),
        ),

        const SizedBox(height: 12),

        // Text Content
        Column(
          children: [
            Text(
              'Appointment Cancelled',
              style: GoogleFonts.lexend(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFE53935),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'This appointment was cancelled.',
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9E9E9E)
                    : const Color(0xFF5f868c),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
