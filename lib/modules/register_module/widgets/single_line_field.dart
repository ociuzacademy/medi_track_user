// Update input_field.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/widgets/input_field.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class SingleLineField extends StatelessWidget {
  const SingleLineField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    required this.label,
    required this.icon,
    required this.theme,
    required this.isDark,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final ValidateTextInput? validator;
  final String label;
  final IconData icon;
  final ThemeData theme;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            validator: validator,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: isDark ? Colors.white : AppColors.textSecondaryLight,
            ),
            decoration: InputDecoration(
              hintText: label,
              hintStyle: GoogleFonts.inter(color: AppColors.textTertiaryLight),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
          ),
        ),
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1a2c3a) : const Color(0xFFEFEFEF),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Icon(icon, color: theme.colorScheme.primary),
        ),
      ],
    );
  }
}
