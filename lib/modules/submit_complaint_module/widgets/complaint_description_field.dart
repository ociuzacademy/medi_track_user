// complaint_description_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class ComplaintDescriptionField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const ComplaintDescriptionField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Describe Your Complaint in Detail',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: isDark ? const Color(0x0DFFFFFF) : const Color(0x0D000000),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isDark ? const Color(0xFF443333) : AppColors.textSecondaryDark,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              controller: controller,
              validator: validator,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Please provide as much detail as possible...',
                hintStyle: GoogleFonts.lexend(
                  fontSize: 16,
                  color: isDark
                      ? const Color(0xFFA08F8F)
                      : AppColors.textTertiaryLight,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorStyle: const TextStyle(fontSize: 12, height: 0.8),
              ),
              style: GoogleFonts.lexend(
                fontSize: 16,
                color: isDark
                    ? AppColors.textSecondaryDark
                    : AppColors.textSecondaryLight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
