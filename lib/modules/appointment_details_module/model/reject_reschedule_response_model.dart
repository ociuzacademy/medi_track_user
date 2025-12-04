// To parse this JSON data, do
//
//     final rejectRescheduleResponseModel = rejectRescheduleResponseModelFromJson(jsonString);

import 'dart:convert';

RejectRescheduleResponseModel rejectRescheduleResponseModelFromJson(
  String str,
) => RejectRescheduleResponseModel.fromJson(json.decode(str));

String rejectRescheduleResponseModelToJson(
  RejectRescheduleResponseModel data,
) => json.encode(data.toJson());

class RejectRescheduleResponseModel {
  final bool success;
  final String message;
  final int appointmentId;

  const RejectRescheduleResponseModel({
    required this.success,
    required this.message,
    required this.appointmentId,
  });

  RejectRescheduleResponseModel copyWith({
    bool? success,
    String? message,
    int? appointmentId,
  }) => RejectRescheduleResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    appointmentId: appointmentId ?? this.appointmentId,
  );

  factory RejectRescheduleResponseModel.fromJson(Map<String, dynamic> json) =>
      RejectRescheduleResponseModel(
        success: json['success'],
        message: json['message'],
        appointmentId: json['appointment_id'],
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'appointment_id': appointmentId,
  };
}
