// To parse this JSON data, do
//
//     final appointmentFeedbackResponseModel = appointmentFeedbackResponseModelFromJson(jsonString);

import 'dart:convert';

AppointmentFeedbackResponseModel appointmentFeedbackResponseModelFromJson(
  String str,
) => AppointmentFeedbackResponseModel.fromJson(json.decode(str));

String appointmentFeedbackResponseModelToJson(
  AppointmentFeedbackResponseModel data,
) => json.encode(data.toJson());

class AppointmentFeedbackResponseModel {
  final bool success;
  final String message;
  final Data data;

  const AppointmentFeedbackResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  AppointmentFeedbackResponseModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) => AppointmentFeedbackResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    data: data ?? this.data,
  );

  factory AppointmentFeedbackResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => AppointmentFeedbackResponseModel(
    success: json['success'],
    message: json['message'],
    data: Data.fromJson(json['data']),
  );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'data': data.toJson(),
  };
}

class Data {
  final int feedbackId;
  final int appointmentId;
  final int starRating;
  final double doctorInteractionRating;
  final double hospitalServiceRating;
  final String comments;

  const Data({
    required this.feedbackId,
    required this.appointmentId,
    required this.starRating,
    required this.doctorInteractionRating,
    required this.hospitalServiceRating,
    required this.comments,
  });

  Data copyWith({
    int? feedbackId,
    int? appointmentId,
    int? starRating,
    double? doctorInteractionRating,
    double? hospitalServiceRating,
    String? comments,
  }) => Data(
    feedbackId: feedbackId ?? this.feedbackId,
    appointmentId: appointmentId ?? this.appointmentId,
    starRating: starRating ?? this.starRating,
    doctorInteractionRating:
        doctorInteractionRating ?? this.doctorInteractionRating,
    hospitalServiceRating: hospitalServiceRating ?? this.hospitalServiceRating,
    comments: comments ?? this.comments,
  );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    feedbackId: json['feedback_id'],
    appointmentId: json['appointment_id'],
    starRating: json['star_rating'],
    doctorInteractionRating: json['doctor_interaction_rating']?.toDouble(),
    hospitalServiceRating: json['hospital_service_rating'],
    comments: json['comments'],
  );

  Map<String, dynamic> toJson() => {
    'feedback_id': feedbackId,
    'appointment_id': appointmentId,
    'star_rating': starRating,
    'doctor_interaction_rating': doctorInteractionRating,
    'hospital_service_rating': hospitalServiceRating,
    'comments': comments,
  };
}
