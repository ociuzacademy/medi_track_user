// appointment_details.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFdbe5e6),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Payment Status',
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF5f868c),
            ),
          ),
          Text(
            'Paid',
            style: GoogleFonts.lexend(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF4CAF50),
            ),
          ),
        ],
      ),
    );
  }
}
