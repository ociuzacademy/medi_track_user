// To parse this JSON data, do
//
//     final appointmentCancelResponseModel = appointmentCancelResponseModelFromJson(jsonString);

import 'dart:convert';

AppointmentCancelResponseModel appointmentCancelResponseModelFromJson(
  String str,
) => AppointmentCancelResponseModel.fromJson(json.decode(str));

String appointmentCancelResponseModelToJson(
  AppointmentCancelResponseModel data,
) => json.encode(data.toJson());

class AppointmentCancelResponseModel {
  final bool success;
  final String message;

  const AppointmentCancelResponseModel({
    required this.success,
    required this.message,
  });

  AppointmentCancelResponseModel copyWith({bool? success, String? message}) =>
      AppointmentCancelResponseModel(
        success: success ?? this.success,
        message: message ?? this.message,
      );

  factory AppointmentCancelResponseModel.fromJson(Map<String, dynamic> json) =>
      AppointmentCancelResponseModel(
        success: json['success'],
        message: json['message'],
      );

  Map<String, dynamic> toJson() => {'success': success, 'message': message};
}
