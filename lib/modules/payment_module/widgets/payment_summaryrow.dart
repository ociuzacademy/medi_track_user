// payment_summary_section.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSummaryrow extends StatelessWidget {
  const PaymentSummaryrow({
    super.key,
    required this.label,
    required this.value,
    required this.isDark,
    required this.isBold,
  });

  final String label;
  final String value;
  final bool isDark;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: isDark ? const Color(0xFF9ca3af) : const Color(0xFF618389),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
      ],
    );
  }
}
