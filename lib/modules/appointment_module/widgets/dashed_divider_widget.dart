// appointment_summary_section.dart

import 'package:flutter/material.dart';

class DashedDividerWidget extends StatelessWidget {
  const DashedDividerWidget({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        const dashHeight = 1.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isDark
                      ? const Color(0xFF374151)
                      : const Color(0xFFdbe1e6),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
