// To parse this JSON data, do
//
//     final acceptRescheduleResponseModel = acceptRescheduleResponseModelFromJson(jsonString);

import 'dart:convert';

AcceptRescheduleResponseModel acceptRescheduleResponseModelFromJson(
  String str,
) => AcceptRescheduleResponseModel.fromJson(json.decode(str));

String acceptRescheduleResponseModelToJson(
  AcceptRescheduleResponseModel data,
) => json.encode(data.toJson());

class AcceptRescheduleResponseModel {
  final bool success;
  final String message;
  final int appointmentId;
  final DateTime newDate;
  final int newToken;

  const AcceptRescheduleResponseModel({
    required this.success,
    required this.message,
    required this.appointmentId,
    required this.newDate,
    required this.newToken,
  });

  AcceptRescheduleResponseModel copyWith({
    bool? success,
    String? message,
    int? appointmentId,
    DateTime? newDate,
    int? newToken,
  }) => AcceptRescheduleResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    appointmentId: appointmentId ?? this.appointmentId,
    newDate: newDate ?? this.newDate,
    newToken: newToken ?? this.newToken,
  );

  factory AcceptRescheduleResponseModel.fromJson(Map<String, dynamic> json) =>
      AcceptRescheduleResponseModel(
        success: json['success'],
        message: json['message'],
        appointmentId: json['appointment_id'],
        newDate: DateTime.parse(json['new_date']),
        newToken: json['new_token'],
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'appointment_id': appointmentId,
    'new_date':
        "${newDate.year.toString().padLeft(4, '0')}-${newDate.month.toString().padLeft(2, '0')}-${newDate.day.toString().padLeft(2, '0')}",
    'new_token': newToken,
  };
}
