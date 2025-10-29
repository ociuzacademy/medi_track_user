// models/rescheduled_appointment.dart
import 'package:flutter/material.dart';

class RescheduledAppointment {
  final String id;
  final String doctorName;
  final String specialty;
  final String doctorImageUrl;
  final String originalDate;
  final String originalToken;
  final String rescheduledDate;
  final String rescheduledToken;
  final String reason;
  final String receivedTime;
  final AppointmentStatus status;

  const RescheduledAppointment({
    required this.id,
    required this.doctorName,
    required this.specialty,
    required this.doctorImageUrl,
    required this.originalDate,
    required this.originalToken,
    required this.rescheduledDate,
    required this.rescheduledToken,
    required this.reason,
    required this.receivedTime,
    required this.status,
  });
}

enum AppointmentStatus { pending, accepted }

extension AppointmentStatusExtension on AppointmentStatus {
  String get displayName {
    switch (this) {
      case AppointmentStatus.pending:
        return 'Pending';
      case AppointmentStatus.accepted:
        return 'Accepted';
    }
  }

  Color get color {
    switch (this) {
      case AppointmentStatus.pending:
        return const Color(0xFFCA8A04);
      case AppointmentStatus.accepted:
        return const Color(0xFF16A34A);
    }
  }

  Color get backgroundColor {
    switch (this) {
      case AppointmentStatus.pending:
        return const Color(0xFFFEF9C3);
      case AppointmentStatus.accepted:
        return const Color(0xFFDCFCE7);
    }
  }

  Color get darkBackgroundColor {
    switch (this) {
      case AppointmentStatus.pending:
        return const Color(0xFF713F12);
      case AppointmentStatus.accepted:
        return const Color(0xFF166534);
    }
  }
}
