// complaint_subject_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplaintSubjectField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const ComplaintSubjectField({
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
          'Subject / Title',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0x0DFFFFFF) : const Color(0x0D000000),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isDark ? const Color(0xFF443333) : const Color(0xFFE0E0E0),
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                hintText: 'Enter a brief title for your complaint',
                hintStyle: GoogleFonts.lexend(
                  fontSize: 16,
                  color: isDark
                      ? const Color(0xFFA08F8F)
                      : const Color(0xFF886364),
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
                    ? const Color(0xFFE0E0E0)
                    : const Color(0xFF333333),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
