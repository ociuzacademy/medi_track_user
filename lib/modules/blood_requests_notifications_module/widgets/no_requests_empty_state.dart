// widgets/no_requests_empty_state.dart
import 'package:flutter/material.dart';

class NoRequestsEmptyState extends StatelessWidget {
  const NoRequestsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isDark
              ? Colors.white.withValues(alpha: 0.05)
              : const Color(0xFFF8F6F6),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? const Color(0xFF6B7280) : const Color(0xFFD1D5DB),
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
        constraints: const BoxConstraints(minHeight: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xFFD93B3B).withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications_off,
                size: 32,
                color: Color(0xFFD93B3B),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'No requests at the moment.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : const Color(0xFF1C1B1F),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "We'll notify you when you can help save a life!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF49454F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
