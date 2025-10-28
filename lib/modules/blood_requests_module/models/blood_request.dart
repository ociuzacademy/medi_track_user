// models/blood_request.dart
import 'package:flutter/material.dart';

class BloodRequest {
  final String id;
  final String patientName;
  final String bloodGroup;
  final int unitsRequired;
  final Urgency urgency;
  final DateTime requestTime;
  final bool isActive;

  const BloodRequest({
    required this.id,
    required this.patientName,
    required this.bloodGroup,
    required this.unitsRequired,
    required this.urgency,
    required this.requestTime,
    this.isActive = true,
  });

  String get formattedTime {
    final now = DateTime.now();
    final difference = now.difference(requestTime);

    if (difference.inDays == 0) {
      return 'Today, ${_formatTime(requestTime)}';
    } else if (difference.inDays == 1) {
      return 'Yesterday, ${_formatTime(requestTime)}';
    } else {
      return _formatTime(requestTime);
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
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
        return Colors.red;
      case Urgency.medium:
        return Colors.amber;
      case Urgency.low:
        return Colors.green;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case Urgency.high:
        return Colors.red.shade100;
      case Urgency.medium:
        return Colors.amber.shade100;
      case Urgency.low:
        return Colors.green.shade100;
    }
  }

  Color get darkBackgroundColor {
    switch (this) {
      case Urgency.high:
        return Colors.red.shade900.withValues(alpha: 0.4);
      case Urgency.medium:
        return Colors.amber.shade900.withValues(alpha: 0.4);
      case Urgency.low:
        return Colors.green.shade900.withValues(alpha: 0.4);
    }
  }
}
