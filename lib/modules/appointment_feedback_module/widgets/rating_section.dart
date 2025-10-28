// feedback_form.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    super.key,
    required this.overallRating,
    required this.onRatingChanged,
    required this.context,
  });

  final int overallRating;
  final ValueChanged<int> onRatingChanged;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Overall Rating',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF111817),
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              final isFilled = index < overallRating;
              return GestureDetector(
                onTap: () => onRatingChanged(index + 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    isFilled ? Icons.star : Icons.star_outline,
                    color: isFilled
                        ? const Color(0xFF05c7a7)
                        : (isDark
                              ? const Color(0xFF6B7280)
                              : const Color(0xFFD1D5DB)),
                    size: 36,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
