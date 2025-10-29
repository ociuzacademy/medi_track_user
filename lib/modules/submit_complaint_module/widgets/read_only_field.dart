// read_only_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadOnlyField extends StatelessWidget {
  final String label;
  final String value;

  const ReadOnlyField({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
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
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                value,
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: isDark
                      ? const Color(0xFFE0E0E0)
                      : const Color(0xFF333333),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
