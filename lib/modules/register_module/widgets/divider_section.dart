import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({
    super.key,
    required this.isDarkMode,
    required this.theme,
  });

  final bool isDarkMode;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: isDarkMode ? Colors.grey[600] : Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Already have an account?',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: isDarkMode ? Colors.grey[400] : Colors.grey[500],
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: isDarkMode ? Colors.grey[600] : Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}
