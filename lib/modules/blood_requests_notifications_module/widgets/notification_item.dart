// widgets/notification_item.dart
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isDark;

  const NotificationItem({
    super.key,
    required this.icon,
    required this.text,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF49454F),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF49454F),
            ),
          ),
        ),
      ],
    );
  }
}
