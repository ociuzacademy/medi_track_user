import 'package:flutter/material.dart';

class OnboardingDotIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const OnboardingDotIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        final dotSize = screenWidth * 0.02; // Responsive dot size
        return Container(
          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
          width: dotSize,
          height: dotSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPage
                ? colorScheme.primary
                : colorScheme.primary.withValues(
                    alpha: Theme.of(context).brightness == Brightness.dark
                        ? 0.3
                        : 0.2,
                  ),
          ),
        );
      }),
    );
  }
}
