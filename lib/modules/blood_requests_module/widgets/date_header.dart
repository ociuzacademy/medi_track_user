// widgets/date_header.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DateHeader extends StatelessWidget {
  final String text;

  const DateHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
