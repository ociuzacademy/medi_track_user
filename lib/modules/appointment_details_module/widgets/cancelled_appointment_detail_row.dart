// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelledAppointmentDetailRow extends StatelessWidget {
  final String label;
  final String value;
  const CancelledAppointmentDetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF5f868c),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.lexend(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isDark ? Colors.white : const Color(0xFF111718),
            ),
          ),
        ],
      ),
    );
  }
}
