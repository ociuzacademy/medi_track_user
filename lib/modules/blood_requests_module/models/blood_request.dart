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
        return const Color(0xFFFFEBEE);
      case Urgency.medium:
        return const Color(0xFFFFF3E0);
      case Urgency.low:
        return const Color(0xFFE3F2FD);
    }
  }

  Color get darkBackgroundColor {
    switch (this) {
      case Urgency.high:
        return const Color(0xFF2A1A1A);
      case Urgency.medium:
        return const Color(0xFF2A241A);
      case Urgency.low:
        return const Color(0xFF1A2A2A);
    }
  }

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
}
