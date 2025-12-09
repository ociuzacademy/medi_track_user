// search_appointment_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class SearchAppointmentField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchAppointmentField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: isDark ? AppColors.borderDark : const Color(0xFFD1D5DB),
        ),
        color: isDark ? AppColors.cardDark : Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Icon(
            Icons.search,
            color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: 'Search by doctor, department...',
                hintStyle: GoogleFonts.inter(
                  color: isDark
                      ? AppColors.textTertiaryDark
                      : AppColors.textTertiaryLight,
                  fontSize: 14,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              style: GoogleFonts.inter(
                fontSize: 14,
                color: isDark ? Colors.white : AppColors.textPrimaryLight,
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
