// Update input_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/widgets/multiline_field.dart';
import 'package:medi_track/modules/register_module/widgets/single_line_field.dart';
import 'package:medi_track/core/constants/app_colors.dart';

typedef ValidateTextInput = String? Function(String? value)?;

class InputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType? keyboardType;
  final ValidateTextInput validator;
  final int? maxLines; // Add this

  const InputField({
    super.key,
    required this.label,
    required this.controller,
    required this.icon,
    this.keyboardType,
    this.validator,
    this.maxLines = 1, // Default to 1
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textSecondaryLight,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: maxLines! > 1 ? 96 : 56, // Adjust height for multiline
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1a2c3a) : const Color(0xFFEFEFEF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: maxLines! > 1
              ? MultilineField(
                  controller: controller,
                  keyboardType: keyboardType,
                  validator: validator,
                  maxLines: maxLines,
                  label: label,
                  theme: theme,
                  isDark: isDark,
                )
              : SingleLineField(
                  controller: controller,
                  keyboardType: keyboardType,
                  validator: validator,
                  label: label,
                  icon: icon,
                  theme: theme,
                  isDark: isDark,
                ),
        ),
      ],
    );
  }
}
