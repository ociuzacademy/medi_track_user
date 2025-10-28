// date_picker_field.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DatePickerField extends StatelessWidget {
  final ThemeData theme;
  final DateTime? selectedDate;
  final VoidCallback onDateSelected;

  const DatePickerField({
    super.key,
    required this.theme,
    this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF111518),
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onDateSelected,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF101a22) : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isDark
                    ? const Color(0xFF374151)
                    : const Color(0xFFdbe1e6),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      selectedDate == null
                          ? 'Select Date'
                          : DateFormat('dd MMM yyyy').format(selectedDate!),
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: selectedDate == null
                            ? (isDark
                                  ? Colors.white.withValues(alpha: 0.5)
                                  : const Color(
                                      0xFF111518,
                                    ).withValues(alpha: 0.5))
                            : (isDark ? Colors.white : const Color(0xFF111518)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF101a22) : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
