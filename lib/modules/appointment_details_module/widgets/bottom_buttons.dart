// bottom_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0f2023) : Colors.white,
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: // Back to My Appointments Button
      SizedBox(
        width: double.infinity,
        height: 48,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            foregroundColor: isDark ? Colors.white : const Color(0xFF111718),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Back to My Appointments',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.015,
            ),
          ),
        ),
      ),
    );
  }
}
