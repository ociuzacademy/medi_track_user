// confirmation_footer.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationFooter extends StatelessWidget {
  const ConfirmationFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF101a22) : const Color(0xFFF9FAFB),
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: Text(
        'MediTrack: Your Health, Our Priority.',
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B7280),
        ),
      ),
    );
  }
}
