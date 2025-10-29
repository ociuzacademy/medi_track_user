// widgets/empty_state.dart
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final VoidCallback onRefresh;

  const EmptyState({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                color: const Color(0xFF137FEC).withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications_off,
                size: 64,
                color: Color(0xFF137FEC),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No Reschedule Notifications',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : const Color(0xFF111418),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'All your appointment updates will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF617589),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 40,
              child: OutlinedButton(
                onPressed: onRefresh,
                style: OutlinedButton.styleFrom(
                  backgroundColor: isDark
                      ? const Color(0xFF374151)
                      : const Color(0xFFF3F4F6),
                  foregroundColor: isDark
                      ? Colors.white
                      : const Color(0xFF111418),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Refresh'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
