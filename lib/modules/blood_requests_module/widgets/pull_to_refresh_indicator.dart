// widgets/pull_to_refresh_indicator.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PullToRefreshIndicator extends StatelessWidget {
  const PullToRefreshIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sync,
            size: 20,
            color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
          ),
          const SizedBox(width: 8),
          Text(
            'Pull to refresh',
            style: TextStyle(
              fontSize: 14,
              color: isDark ? AppColors.textTertiaryDark : AppColors.textTertiaryLight,
            ),
          ),
        ],
      ),
    );
  }
}
