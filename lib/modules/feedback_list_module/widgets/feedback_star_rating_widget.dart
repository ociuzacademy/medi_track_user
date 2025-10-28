import 'package:flutter/material.dart';

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
        return Icon(
          isFilled ? Icons.star : Icons.star_border,
          color: isFilled
              ? const Color(0xFFea2a33)
              : (isDark ? const Color(0xFF4B5563) : const Color(0xFFD1D5DB)),
          size: 20,
        );
      }),
    );
  }
}
