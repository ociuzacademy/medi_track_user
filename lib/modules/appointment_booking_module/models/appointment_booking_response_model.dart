// To parse this JSON data, do
//
//     final appointmentBookingResponseModel = appointmentBookingResponseModelFromJson(jsonString);

import 'dart:convert';

AppointmentBookingResponseModel appointmentBookingResponseModelFromJson(
  String str,
) => AppointmentBookingResponseModel.fromJson(json.decode(str));

String appointmentBookingResponseModelToJson(
  AppointmentBookingResponseModel data,
) => json.encode(data.toJson());

class AppointmentBookingResponseModel {
  final String message;
  final Appointment appointment;
  final int tokenNumber;

  const AppointmentBookingResponseModel({
    required this.message,
    required this.appointment,
    required this.tokenNumber,
  });

  AppointmentBookingResponseModel copyWith({
    String? message,
    Appointment? appointment,
    int? tokenNumber,
  }) => AppointmentBookingResponseModel(
    message: message ?? this.message,
    appointment: appointment ?? this.appointment,
    tokenNumber: tokenNumber ?? this.tokenNumber,
  );

  factory AppointmentBookingResponseModel.fromJson(Map<String, dynamic> json) =>
      AppointmentBookingResponseModel(
        message: json['message'],
        appointment: Appointment.fromJson(json['appointment']),
        tokenNumber: json['token_number'],
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'appointment': appointment.toJson(),
    'token_number': tokenNumber,
  };
}

class Appointment {
  final int id;
  final DateTime date;
  final int tokenNumber;
  final String symptoms;
  final String paymentStatus;
  final String status;
  final dynamic rescheduledDate;
  final dynamic cancellationReason;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int user;
  final int doctor;

  const Appointment({
    required this.id,
    required this.date,
    required this.tokenNumber,
    required this.symptoms,
    required this.paymentStatus,
    required this.status,
    required this.rescheduledDate,
    required this.cancellationReason,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.doctor,
  });

  Appointment copyWith({
    int? id,
    DateTime? date,
    int? tokenNumber,
    String? symptoms,
    String? paymentStatus,
    String? status,
    dynamic rescheduledDate,
    dynamic cancellationReason,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? user,
    int? doctor,
  }) => Appointment(
    id: id ?? this.id,
    date: date ?? this.date,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    symptoms: symptoms ?? this.symptoms,
    paymentStatus: paymentStatus ?? this.paymentStatus,
    status: status ?? this.status,
    rescheduledDate: rescheduledDate ?? this.rescheduledDate,
    cancellationReason: cancellationReason ?? this.cancellationReason,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    user: user ?? this.user,
    doctor: doctor ?? this.doctor,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    date: DateTime.parse(json['date']),
    tokenNumber: json['token_number'],
    symptoms: json['symptoms'],
    paymentStatus: json['payment_status'],
    status: json['status'],
    rescheduledDate: json['rescheduled_date'],
    cancellationReason: json['cancellation_reason'],
    createdAt: DateTime.parse(json['created_at']),
    updatedAt: DateTime.parse(json['updated_at']),
    user: json['user'],
    doctor: json['doctor'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'token_number': tokenNumber,
    'symptoms': symptoms,
    'payment_status': paymentStatus,
    'status': status,
    'rescheduled_date': rescheduledDate,
    'cancellation_reason': cancellationReason,
    'created_at': createdAt.toIso8601String(),
    'updated_at': updatedAt.toIso8601String(),
    'user': user,
    'doctor': doctor,
  };
}
