// To parse this JSON data, do
//
//     final upcomingAppointmentsModel = upcomingAppointmentsModelFromJson(jsonString);

import 'dart:convert';

UpcomingAppointmentsModel upcomingAppointmentsModelFromJson(String str) =>
    UpcomingAppointmentsModel.fromJson(json.decode(str));

String upcomingAppointmentsModelToJson(UpcomingAppointmentsModel data) =>
    json.encode(data.toJson());

class UpcomingAppointmentsModel {
  final bool success;
  final int count;
  final List<Appointment> appointments;

  UpcomingAppointmentsModel({
    required this.success,
    required this.count,
    required this.appointments,
  });

  UpcomingAppointmentsModel copyWith({
    bool? success,
    int? count,
    List<Appointment>? appointments,
  }) => UpcomingAppointmentsModel(
    success: success ?? this.success,
    count: count ?? this.count,
    appointments: appointments ?? this.appointments,
  );

  factory UpcomingAppointmentsModel.fromJson(Map<String, dynamic> json) =>
      UpcomingAppointmentsModel(
        success: json['success'],
        count: json['count'],
        appointments: List<Appointment>.from(
          json['appointments'].map((x) => Appointment.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'count': count,
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
  final String paymentStatus;
  final String status;
  final DateTime? rescheduledDate;
  final String? cancellationReason;
  final DateTime createdAt;

  Appointment({
    required this.id,
    required this.doctorName,
    required this.departmentName,
    required this.date,
    required this.tokenNumber,
    required this.symptoms,
    required this.paymentStatus,
    required this.status,
    this.rescheduledDate,
    this.cancellationReason,
    required this.createdAt,
  });

  Appointment copyWith({
    int? id,
    String? doctorName,
    String? departmentName,
    DateTime? date,
    int? tokenNumber,
    String? symptoms,
    String? paymentStatus,
    String? status,
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
    paymentStatus: json['payment_status'],
    status: json['status'],
    rescheduledDate: json['rescheduled_date'],
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
    'payment_status': paymentStatus,
    'status': status,
    'rescheduled_date': rescheduledDate,
    'cancellation_reason': cancellationReason,
    'created_at': createdAt.toIso8601String(),
  };
}
