// prescription_search_bar.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PrescriptionSearchBar extends StatelessWidget {
  final TextEditingController controller;

  const PrescriptionSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Search Icon
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Icon(
              Icons.search,
              color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
              size: 20,
            ),
          ),

          // Search Field
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Search by doctor or date...',
                  hintStyle: GoogleFonts.lexend(
                    fontSize: 16,
                    color: isDark
                        ? AppColors.textTertiaryDark
                        : AppColors.textTertiaryLight,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: isDark ? Colors.white : AppColors.textPrimaryLight,
                ),
              ),
            ),
          ),

          // Filter Icon
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.filter_list,
              color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
