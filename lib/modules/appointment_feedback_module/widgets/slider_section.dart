// feedback_form.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({
    super.key,
    required this.context,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final BuildContext context;
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

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
            color: isDark ? Colors.white : const Color(0xFF111817),
          ),
        ),
        const SizedBox(height: 12),
        Slider(
          value: value,
          min: 1,
          max: 5,
          divisions: 4,
          activeColor: const Color(0xFF05c7a7),
          inactiveColor: isDark
              ? const Color(0xFF4B5563)
              : const Color(0xFFE5E7EB),
          onChanged: onChanged,
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Poor',
              style: GoogleFonts.lexend(
                fontSize: 12,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),
            Text(
              'Excellent',
              style: GoogleFonts.lexend(
                fontSize: 12,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
