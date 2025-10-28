// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isDark;
  final bool isStatus;
  const AppointmentDetailRow({
    super.key,
    required this.label,
    required this.value,
    required this.isDark,
    this.isStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B7280),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: isStatus ? FontWeight.bold : FontWeight.normal,
            color: isStatus
                ? const Color(0xFF4CAF50)
                : (isDark ? Colors.white : const Color(0xFF111518)),
          ),
        ),
      ],
    );
  }
}
