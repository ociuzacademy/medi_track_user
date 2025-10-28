// complaint_subject_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplaintSubjectField extends StatelessWidget {
  final TextEditingController controller;

  const ComplaintSubjectField({super.key, required this.controller});

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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter a brief title for your complaint',
              hintStyle: GoogleFonts.lexend(
                fontSize: 16,
                color: isDark
                    ? const Color(0xFFa08f8f)
                    : const Color(0xFF886364),
              ),
              filled: true,
              fillColor: isDark ? const Color(0xFF2a1a1a) : Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: isDark
                      ? const Color(0xFF443333)
                      : const Color(0xFFE0E0E0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: isDark
                      ? const Color(0xFF443333)
                      : const Color(0xFFE0E0E0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: const Color(0xFFea2a33).withValues(alpha: 0.5),
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
            style: GoogleFonts.lexend(
              fontSize: 16,
              color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
            ),
          ),
        ),
      ],
    );
  }
}
