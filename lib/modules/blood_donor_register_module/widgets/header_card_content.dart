import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class HeaderCardContent extends StatelessWidget {
  const HeaderCardContent({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your donation can save lives.',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? AppColors.borderLight : const Color(0xFF111418),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Thank you for considering becoming a donor. Please provide the following details.',
          style: GoogleFonts.lexend(
            fontSize: 16,
            color: isDark
                ? AppColors.textTertiaryDark
                : const Color(0xFF617589),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
