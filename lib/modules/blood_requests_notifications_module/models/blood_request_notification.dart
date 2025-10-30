// models/blood_request_notification.dart
import 'package:flutter/material.dart';

class BloodRequestNotification {
  final String id;
  final int unitsNeeded;
  final DateTime postedDate;
  final Urgency urgency;
  final bool isActive;

  const BloodRequestNotification({
    required this.id,
    required this.unitsNeeded,
    required this.postedDate,
    required this.urgency,
    this.isActive = true,
  });

  String get formattedDate {
    final month = _getMonthAbbreviation(postedDate.month);
    return 'Posted: $month ${postedDate.day}, ${postedDate.year}, ${_formatTime(postedDate)}';
  }

  String _formatTime(DateTime time) {
    final hour = time.hour % 12 == 0 ? 12 : time.hour % 12;
    final period = time.hour < 12 ? 'AM' : 'PM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  String _getMonthAbbreviation(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }
}

enum Urgency { high, medium, low }

extension UrgencyExtension on Urgency {
  String get displayName {
    switch (this) {
      case Urgency.high:
        return 'High Urgency';
      case Urgency.medium:
        return 'Medium Urgency';
      case Urgency.low:
        return 'Low Urgency';
    }
  }

  Color get color {
    switch (this) {
      case Urgency.high:
        return const Color(0xFFF44336); // Keep red for high urgency
      case Urgency.medium:
        return const Color(0xFFFF9800); // Orange for medium
      case Urgency.low:
        return const Color(0xFF2196F3); // Blue for low
    }
  }

  Color get backgroundColor {
    switch (this) {
      case Urgency.high:
        return const Color(0xFFF44336).withValues(alpha: 0.2);
      case Urgency.medium:
        return const Color(0xFFFF9800).withValues(alpha: 0.2);
      case Urgency.low:
        return const Color(0xFF2196F3).withValues(alpha: 0.2);
    }
  }
}
