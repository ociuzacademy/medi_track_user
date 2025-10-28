import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
    required this.isDarkMode,
    required this.theme,
  });

  final bool isDarkMode;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Center(
        child: Text(
          'Your Health, Our Priority.',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: isDarkMode ? Colors.grey[400] : Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
