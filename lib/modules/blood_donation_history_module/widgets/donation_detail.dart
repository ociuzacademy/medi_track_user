// widgets/donation_history_card.dart

import 'package:flutter/material.dart';

class DonationDetail extends StatelessWidget {
  final String label;
  final String value;
  final bool isDark;

  const DonationDetail({
    super.key,
    required this.label,
    required this.value,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: TextStyle(
              fontSize: 16,
              color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B6B6B),
            ),
          ),
          TextSpan(
            text: ' $value',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B6B6B),
            ),
          ),
        ],
      ),
    );
  }
}
