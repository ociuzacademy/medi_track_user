import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({super.key, required this.rating});

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final isFilled = index < rating;
        return Icon(
          isFilled ? Icons.star : Icons.star_border,
          color: isFilled ? const Color(0xFFFFC107) : const Color(0xFFD1D5DB),
          size: 24,
        );
      }),
    );
  }
}
