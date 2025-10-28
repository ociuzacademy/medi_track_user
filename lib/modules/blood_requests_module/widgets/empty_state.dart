// widgets/empty_state.dart
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: const Color(0xFFEC1313).withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.checklist,
                size: 48,
                color: Color(0xFFEC1313),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'No Active Requests',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'There are no active blood requests at the moment. Thank you for checking!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
