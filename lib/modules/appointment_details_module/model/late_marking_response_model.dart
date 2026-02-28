// To parse this JSON data, do
//
//     final lateMarkingResponseModel = lateMarkingResponseModelFromJson(jsonString);

import 'dart:convert';

LateMarkingResponseModel lateMarkingResponseModelFromJson(String str) =>
    LateMarkingResponseModel.fromJson(json.decode(str));

String lateMarkingResponseModelToJson(LateMarkingResponseModel data) =>
    json.encode(data.toJson());

class LateMarkingResponseModel {
  final bool success;
  final String message;
  final int oldToken;
  final String newToken;
  final int slotLimitToken;
  final String timeSlot;

  const LateMarkingResponseModel({
    required this.success,
    required this.message,
    required this.oldToken,
    required this.newToken,
    required this.slotLimitToken,
    required this.timeSlot,
  });

  LateMarkingResponseModel copyWith({
    bool? success,
    String? message,
    int? oldToken,
    String? newToken,
    int? slotLimitToken,
    String? timeSlot,
  }) => LateMarkingResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    oldToken: oldToken ?? this.oldToken,
    newToken: newToken ?? this.newToken,
    slotLimitToken: slotLimitToken ?? this.slotLimitToken,
    timeSlot: timeSlot ?? this.timeSlot,
  );

  factory LateMarkingResponseModel.fromJson(Map<String, dynamic> json) =>
      LateMarkingResponseModel(
        success: json['success'],
        message: json['message'],
        oldToken: json['old_token'],
        newToken: json['new_token'],
        slotLimitToken: json['slot_limit_token'],
        timeSlot: json['time_slot'],
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'old_token': oldToken,
    'new_token': newToken,
    'slot_limit_token': slotLimitToken,
    'time_slot': timeSlot,
  };
}
