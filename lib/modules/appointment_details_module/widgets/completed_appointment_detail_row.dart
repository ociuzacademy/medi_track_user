// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class CompletedAppointmentDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isFirst;
  const CompletedAppointmentDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: isFirst ? 0 : 16, bottom: 16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenWidth * 0.35, // Now screenWidth is used here
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
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.lexend(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDark
                    ? Colors.white
                    : const Color(0xFF212121), // isDark used here
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
