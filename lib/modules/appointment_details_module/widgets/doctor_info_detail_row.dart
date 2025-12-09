// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DoctorInfoDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isFirst;
  final bool isBold;
  const DoctorInfoDetailRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.isFirst = false,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.only(top: isFirst ? 0 : 20, bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          top: isFirst
              ? BorderSide.none
              : BorderSide(
                  color: isDark
                      ? const Color(0xFF37474F)
                      : AppColors.textSecondaryDark,
                ),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF04798b), size: 20),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9E9E9E)
                    : const Color(0xFF616161),
              ),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.lexend(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isDark ? Colors.white : const Color(0xFF212121),
            ),
          ),
        ],
      ),
    );
  }
}
