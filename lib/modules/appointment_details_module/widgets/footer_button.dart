// footer_button.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0f2023) : const Color(0xFFf5f8f8),
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF04798b),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Back to My Appointments',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.015,
            ),
          ),
        ),
      ),
    );
  }
}
