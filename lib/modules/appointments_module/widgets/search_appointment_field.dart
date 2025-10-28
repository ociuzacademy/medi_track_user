// search_appointment_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchAppointmentField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchAppointmentField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: isDark ? const Color(0xFF374151) : const Color(0xFFD1D5DB),
        ),
        color: isDark ? const Color(0xFF1F2937) : Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Icon(
            Icons.search,
            color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B7280),
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: 'Search by doctor, department...',
                hintStyle: GoogleFonts.inter(
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                  fontSize: 14,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              style: GoogleFonts.inter(
                fontSize: 14,
                color: isDark ? Colors.white : const Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
