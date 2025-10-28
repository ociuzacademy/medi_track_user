import 'package:flutter/material.dart';

class AppointmentsHelper {
  static IconData getIconForSpecialty(String specialty) {
    switch (specialty.toLowerCase()) {
      case 'cardiology':
        return Icons.favorite_outline;
      case 'dermatology':
        return Icons.face_outlined;
      case 'neurology':
        return Icons.psychology_outlined;
      case 'orthopedics':
        return Icons.accessible_outlined;
      case 'pediatrics':
        return Icons.child_care_outlined;
      case 'gynecology':
        return Icons.pregnant_woman_outlined;
      case 'ophthalmology':
        return Icons.remove_red_eye_outlined;
      default:
        return Icons.medical_services_outlined;
    }
  }
}
