// widgets/no_donations_empty_state.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class NoDonationsEmptyState extends StatelessWidget {
  const NoDonationsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: const Color(0xFF1565C0).withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, size: 48, color: Color(0xFF1565C0)),
            ),
            const SizedBox(height: 24),
            Text(
              'No Donations Yet',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDark
                    ? AppColors.surfaceLight
                    : const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Thank you for your interest in saving lives! Your donation history will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? AppColors.textTertiaryDark
                      : const Color(0xFF6B6B6B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
