// widgets/info_item.dart
import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isDark;

  const InfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 20,
          color: const Color(0xFFEC1313), // Primary color
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
