// notification_reminder.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationReminder extends StatelessWidget {
  const NotificationReminder({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2196F3).withValues(alpha: isDark ? 0.2 : 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Notification Icon
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF2196F3),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 24,
            ),
          ),

          const SizedBox(width: 16),

          // Reminder Text
          Expanded(
            child: Text(
              'You will be notified 30 minutes before your appointment.',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFFE5E7EB)
                    : const Color(0xFF111518),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
