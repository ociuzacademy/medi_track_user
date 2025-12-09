// widgets/custom_text_form_field.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final String? value;
  final String? Function(String?)? validator;
  final bool autovalidateMode;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.onChanged,
    this.value,
    this.validator,
    this.autovalidateMode = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final controller = TextEditingController(text: value);
    controller.selection = TextSelection.collapsed(
      offset: controller.text.length,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          autovalidateMode: autovalidateMode
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: isDark ? AppColors.textTertiaryDark : const Color(0xFF896161),
            ),
            filled: true,
            fillColor: isDark ? const Color(0xFF1A1F2A) : Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isDark
                    ? const Color(0xFF2D3748)
                    : const Color(0xFFE6DBDB),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF2196F3), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isDark
                    ? const Color(0xFF2D3748)
                    : const Color(0xFFE6DBDB),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),
            errorStyle: const TextStyle(fontSize: 12, color: Colors.red),
          ),
          style: TextStyle(
            fontSize: 16,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
      ],
    );
  }
}
