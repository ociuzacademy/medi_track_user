// To parse this JSON data, do
//
//     final appointmentDetailsModel = appointmentDetailsModelFromJson(jsonString);

import 'dart:convert';

import 'package:medi_track/core/enums/appointment_status.dart';
import 'package:medi_track/core/enums/payment_status.dart';

AppointmentDetailsModel appointmentDetailsModelFromJson(String str) =>
    AppointmentDetailsModel.fromJson(json.decode(str));

String appointmentDetailsModelToJson(AppointmentDetailsModel data) =>
    json.encode(data.toJson());

class AppointmentDetailsModel {
  final bool success;
  final Appointment appointment;

  const AppointmentDetailsModel({
    required this.success,
    required this.appointment,
  });

  AppointmentDetailsModel copyWith({bool? success, Appointment? appointment}) =>
      AppointmentDetailsModel(
        success: success ?? this.success,
        appointment: appointment ?? this.appointment,
      );

  factory AppointmentDetailsModel.fromJson(Map<String, dynamic> json) =>
      AppointmentDetailsModel(
        success: json['success'],
        appointment: Appointment.fromJson(json['appointment']),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'appointment': appointment.toJson(),
  };
}

class Appointment {
  final int id;
  final int doctorId;
  final String userName;
  final String doctorName;
  final String doctorImage;
  final String departmentName;
  final DateTime date;
  final int tokenNumber;
  final String symptoms;
  final PaymentStatus paymentStatus;
  final AppointmentStatus status;
  final DateTime? rescheduledDate;
  final String? cancellationReason;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Appointment({
    required this.id,
    required this.doctorId,
    required this.userName,
    required this.doctorName,
    required this.doctorImage,
    required this.departmentName,
    required this.date,
    required this.tokenNumber,
    required this.symptoms,
    required this.paymentStatus,
    required this.status,
    this.rescheduledDate,
    this.cancellationReason,
    required this.createdAt,
    required this.updatedAt,
  });

  Appointment copyWith({
    int? id,
    int? doctorId,
    String? userName,
    String? doctorName,
    String? doctorImage,
    String? departmentName,
    DateTime? date,
    int? tokenNumber,
    String? symptoms,
    PaymentStatus? paymentStatus,
    AppointmentStatus? status,
    DateTime? rescheduledDate,
    String? cancellationReason,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Appointment(
    id: id ?? this.id,
    doctorId: doctorId ?? this.doctorId,
    userName: userName ?? this.userName,
    doctorName: doctorName ?? this.doctorName,
    doctorImage: doctorImage ?? this.doctorImage,
    departmentName: departmentName ?? this.departmentName,
    date: date ?? this.date,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    symptoms: symptoms ?? this.symptoms,
    paymentStatus: paymentStatus ?? this.paymentStatus,
    status: status ?? this.status,
    rescheduledDate: rescheduledDate ?? this.rescheduledDate,
    cancellationReason: cancellationReason ?? this.cancellationReason,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    doctorId: json['doctor_id'],
    userName: json['user_name'],
    doctorName: json['doctor_name'],
    doctorImage: json['doctor_image'],
    departmentName: json['department_name'],
    date: DateTime.parse(json['date']),
    tokenNumber: json['token_number'],
    symptoms: json['symptoms'],
    paymentStatus: PaymentStatus.fromString(json['payment_status']),
    status: AppointmentStatus.fromString(json['status']),
    rescheduledDate: json['rescheduled_date'] != null
        ? DateTime.parse(json['rescheduled_date'])
        : null,
    cancellationReason: json['cancellation_reason'],
    createdAt: DateTime.parse(json['created_at']),
    updatedAt: DateTime.parse(json['updated_at']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'doctor_id': doctorId,
    'user_name': userName,
    'doctor_name': doctorName,
    'doctor_image': doctorImage,
    'department_name': departmentName,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'token_number': tokenNumber,
    'symptoms': symptoms,
    'payment_status': paymentStatus.value,
    'status': status.value,
    'rescheduled_date': rescheduledDate != null
        ? "${rescheduledDate!.year.toString().padLeft(4, '0')}-${rescheduledDate!.month.toString().padLeft(2, '0')}-${rescheduledDate!.day.toString().padLeft(2, '0')}"
        : null,
    'cancellation_reason': cancellationReason,
    'created_at': createdAt.toIso8601String(),
    'updated_at': updatedAt.toIso8601String(),
  };
}
