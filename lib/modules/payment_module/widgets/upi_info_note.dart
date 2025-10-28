// upi_details_section.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpiInfoNote extends StatelessWidget {
  const UpiInfoNote({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.info_outline,
          size: 16,
          color: isDark ? const Color(0xFF9ca3af) : const Color(0xFF6b7280),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Ensure your UPI app is installed and active.',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: isDark ? const Color(0xFF9ca3af) : const Color(0xFF6b7280),
            ),
          ),
        ),
      ],
    );
  }
}
