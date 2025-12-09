import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class FeedbackStarRatingWidget extends StatelessWidget {
  const FeedbackStarRatingWidget({
    super.key,
    required this.rating,
    required this.isDark,
  });

  final int rating;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final isFilled = index < rating;
        return Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Icon(
            isFilled ? Icons.star : Icons.star_border,
            color: isFilled
                ? AppColors.primaryAlt // New primary color
                : (isDark ? const Color(0xFF4B5563) : const Color(0xFFD1D5DB)),
            size: 20,
          ),
        );
      }),
    );
  }
}
