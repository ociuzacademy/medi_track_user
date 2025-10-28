// models/appointment.dart
import 'package:flutter/material.dart';

enum AppointmentStatus { upcoming, completed, cancelled }

class Appointment {
  final String id;
  final String doctorName;
  final String specialty;
  final String hospital;
  final String date;
  final String tokenNumber;
  final String symptoms;
  final IconData icon;
  final AppointmentStatus status;

  const Appointment({
    required this.id,
    required this.doctorName,
    required this.specialty,
    required this.hospital,
    required this.date,
    required this.tokenNumber,
    required this.symptoms,
    required this.icon,
    required this.status,
  });
}
