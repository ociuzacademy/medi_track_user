// To parse this JSON data, do
//
//     final appointmentsModel = appointmentsModelFromJson(jsonString);

import 'dart:convert';

import 'package:medi_track/core/enums/appointment_status.dart';
import 'package:medi_track/core/enums/payment_status.dart';

AppointmentsModel appointmentsModelFromJson(String str) =>
    AppointmentsModel.fromJson(json.decode(str));

String appointmentsModelToJson(AppointmentsModel data) =>
    json.encode(data.toJson());

class AppointmentsModel {
  final bool success;
  final String user;
  final List<Appointment> appointments;

  const AppointmentsModel({
    required this.success,
    required this.user,
    required this.appointments,
  });

  AppointmentsModel copyWith({
    bool? success,
    String? user,
    List<Appointment>? appointments,
  }) => AppointmentsModel(
    success: success ?? this.success,
    user: user ?? this.user,
    appointments: appointments ?? this.appointments,
  );

  factory AppointmentsModel.fromJson(Map<String, dynamic> json) =>
      AppointmentsModel(
        success: json['success'],
        user: json['user'],
        appointments: List<Appointment>.from(
          json['appointments'].map((x) => Appointment.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'user': user,
    'appointments': List<dynamic>.from(appointments.map((x) => x.toJson())),
  };
}

class Appointment {
  final int id;
  final String doctorName;
  final String departmentName;
  final DateTime date;
  final int tokenNumber;
  final String symptoms;
  final PaymentStatus paymentStatus;
  final AppointmentStatus status;
  final DateTime? rescheduledDate;
  final String? cancellationReason;
  final DateTime createdAt;

  const Appointment({
    required this.id,
    required this.doctorName,
    required this.departmentName,
    required this.date,
    required this.tokenNumber,
    required this.symptoms,
    required this.paymentStatus,
    required this.status,
    required this.rescheduledDate,
    required this.cancellationReason,
    required this.createdAt,
  });

  Appointment copyWith({
    int? id,
    String? doctorName,
    String? departmentName,
    DateTime? date,
    int? tokenNumber,
    String? symptoms,
    PaymentStatus? paymentStatus,
    AppointmentStatus? status,
    DateTime? rescheduledDate,
    String? cancellationReason,
    DateTime? createdAt,
  }) => Appointment(
    id: id ?? this.id,
    doctorName: doctorName ?? this.doctorName,
    departmentName: departmentName ?? this.departmentName,
    date: date ?? this.date,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    symptoms: symptoms ?? this.symptoms,
    paymentStatus: paymentStatus ?? this.paymentStatus,
    status: status ?? this.status,
    rescheduledDate: rescheduledDate ?? this.rescheduledDate,
    cancellationReason: cancellationReason ?? this.cancellationReason,
    createdAt: createdAt ?? this.createdAt,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    doctorName: json['doctor_name'],
    departmentName: json['department_name'],
    date: DateTime.parse(json['date']),
    tokenNumber: json['token_number'],
    symptoms: json['symptoms'],
    paymentStatus: PaymentStatus.fromString(json['payment_status']),
    status: AppointmentStatus.fromString(json['status']),
    rescheduledDate: json['rescheduled_date'] == null
        ? null
        : DateTime.parse(json['rescheduled_date']),
    cancellationReason: json['cancellation_reason'],
    createdAt: DateTime.parse(json['created_at']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'doctor_name': doctorName,
    'department_name': departmentName,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'token_number': tokenNumber,
    'symptoms': symptoms,
    'payment_status': paymentStatus.toJson(),
    'status': status.toJson(),
    'rescheduled_date':
        "${rescheduledDate!.year.toString().padLeft(4, '0')}-${rescheduledDate!.month.toString().padLeft(2, '0')}-${rescheduledDate!.day.toString().padLeft(2, '0')}",
    'cancellation_reason': cancellationReason,
    'created_at': createdAt.toIso8601String(),
  };
}
