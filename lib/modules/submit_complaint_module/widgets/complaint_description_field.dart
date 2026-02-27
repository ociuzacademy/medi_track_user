// complaint_description_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class ComplaintDescriptionField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const ComplaintDescriptionField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  State<ComplaintDescriptionField> createState() =>
      _ComplaintDescriptionFieldState();
}

class _ComplaintDescriptionFieldState extends State<ComplaintDescriptionField> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return FormField<String>(
      initialValue: widget.controller.text,
      validator: widget.validator,
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Describe Your Complaint in Detail',
              style: GoogleFonts.lexend(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDark
                    ? AppColors.textSecondaryDark
                    : AppColors.textSecondaryLight,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0x0DFFFFFF)
                    : const Color(0x0D000000),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: state.hasError
                      ? Colors.red
                      : isDark
                      ? const Color(0xFF443333)
                      : AppColors.textSecondaryDark,
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
                child: TextField(
                  controller: widget.controller,
                  onChanged: (value) {
                    state.didChange(value);
                  },
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
                    errorStyle: const TextStyle(height: 0, fontSize: 0),
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
            if (state.hasError) ...[
              const SizedBox(height: 4),
              Text(
                state.errorText ?? '',
                style: GoogleFonts.lexend(fontSize: 12, color: Colors.red),
              ),
            ],
          ],
        );
      },
    );
  }
}
