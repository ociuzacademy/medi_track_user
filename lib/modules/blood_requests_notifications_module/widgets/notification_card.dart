// widgets/notification_card.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/widgets/notification_item.dart';
import '../models/blood_request_notification.dart';

class NotificationCard extends StatelessWidget {
  final BloodRequestNotification notification;
  final VoidCallback onAccept;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2C1F1F) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.15)
                : Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Notification details
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NotificationItem(
                        icon: Icons.bloodtype,
                        text: 'Units Needed: ${notification.unitsNeeded}',
                        isDark: isDark,
                      ),
                      const SizedBox(height: 8),
                      NotificationItem(
                        icon: Icons.calendar_today,
                        text: notification.formattedDate,
                        isDark: isDark,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // Urgency badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: notification.urgency.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    notification.urgency.displayName,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: notification.urgency.color,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Accept button
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: onAccept,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD93B3B),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, size: 20),
                    SizedBox(width: 8),
                    Text(
                      'Accept',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
