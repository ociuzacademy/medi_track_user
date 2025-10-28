// Update input_field.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/widgets/input_field.dart';

class MultilineField extends StatelessWidget {
  const MultilineField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    required this.maxLines,
    required this.label,
    required this.theme,
    required this.isDark,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final ValidateTextInput? validator;
  final int? maxLines;
  final String label;
  final ThemeData theme;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      maxLines: maxLines,
      style: GoogleFonts.inter(
        fontSize: 16,
        color: isDark ? Colors.white : const Color(0xFF333333),
      ),
      decoration: InputDecoration(
        hintText: label,
        hintStyle: GoogleFonts.inter(color: const Color(0xFF6B7280)),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}
