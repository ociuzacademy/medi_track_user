// To parse this JSON data, do
//
//     final userFeedbackListModel = userFeedbackListModelFromJson(jsonString);

import 'dart:convert';

UserFeedbackListModel userFeedbackListModelFromJson(String str) =>
    UserFeedbackListModel.fromJson(json.decode(str));

String userFeedbackListModelToJson(UserFeedbackListModel data) =>
    json.encode(data.toJson());

class UserFeedbackListModel {
  final String userId;
  final int feedbackCount;
  final List<Feedback> feedback;

  const UserFeedbackListModel({
    required this.userId,
    required this.feedbackCount,
    required this.feedback,
  });

  UserFeedbackListModel copyWith({
    String? userId,
    int? feedbackCount,
    List<Feedback>? feedback,
  }) => UserFeedbackListModel(
    userId: userId ?? this.userId,
    feedbackCount: feedbackCount ?? this.feedbackCount,
    feedback: feedback ?? this.feedback,
  );

  factory UserFeedbackListModel.fromJson(Map<String, dynamic> json) =>
      UserFeedbackListModel(
        userId: json['user_id'],
        feedbackCount: json['feedback_count'],
        feedback: List<Feedback>.from(
          json['feedback'].map((x) => Feedback.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'feedback_count': feedbackCount,
    'feedback': List<dynamic>.from(feedback.map((x) => x.toJson())),
  };
}

class Feedback {
  final int feedbackId;
  final int appointmentId;
  final DateTime appointmentDate;
  final Doctor doctor;
  final int starRating;
  final double doctorInteractionRating;
  final double hospitalServiceRating;
  final String comments;
  final DateTime submittedOn;

  const Feedback({
    required this.feedbackId,
    required this.appointmentId,
    required this.appointmentDate,
    required this.doctor,
    required this.starRating,
    required this.doctorInteractionRating,
    required this.hospitalServiceRating,
    required this.comments,
    required this.submittedOn,
  });

  Feedback copyWith({
    int? feedbackId,
    int? appointmentId,
    DateTime? appointmentDate,
    Doctor? doctor,
    int? starRating,
    double? doctorInteractionRating,
    double? hospitalServiceRating,
    String? comments,
    DateTime? submittedOn,
  }) => Feedback(
    feedbackId: feedbackId ?? this.feedbackId,
    appointmentId: appointmentId ?? this.appointmentId,
    appointmentDate: appointmentDate ?? this.appointmentDate,
    doctor: doctor ?? this.doctor,
    starRating: starRating ?? this.starRating,
    doctorInteractionRating:
        doctorInteractionRating ?? this.doctorInteractionRating,
    hospitalServiceRating: hospitalServiceRating ?? this.hospitalServiceRating,
    comments: comments ?? this.comments,
    submittedOn: submittedOn ?? this.submittedOn,
  );

  factory Feedback.fromJson(Map<String, dynamic> json) => Feedback(
    feedbackId: json['feedback_id'],
    appointmentId: json['appointment_id'],
    appointmentDate: DateTime.parse(json['appointment_date']),
    doctor: Doctor.fromJson(json['doctor']),
    starRating: json['star_rating'],
    doctorInteractionRating: json['doctor_interaction_rating']?.toDouble(),
    hospitalServiceRating: json['hospital_service_rating']?.toDouble(),
    comments: json['comments'],
    submittedOn: DateTime.parse(json['submitted_on']),
  );

  Map<String, dynamic> toJson() => {
    'feedback_id': feedbackId,
    'appointment_id': appointmentId,
    'appointment_date':
        "${appointmentDate.year.toString().padLeft(4, '0')}-${appointmentDate.month.toString().padLeft(2, '0')}-${appointmentDate.day.toString().padLeft(2, '0')}",
    'doctor': doctor.toJson(),
    'star_rating': starRating,
    'doctor_interaction_rating': doctorInteractionRating,
    'hospital_service_rating': hospitalServiceRating,
    'comments': comments,
    'submitted_on': submittedOn.toIso8601String(),
  };
}

class Doctor {
  final int id;
  final String name;
  final String specialization;
  final String email;

  const Doctor({
    required this.id,
    required this.name,
    required this.specialization,
    required this.email,
  });

  Doctor copyWith({
    int? id,
    String? name,
    String? specialization,
    String? email,
  }) => Doctor(
    id: id ?? this.id,
    name: name ?? this.name,
    specialization: specialization ?? this.specialization,
    email: email ?? this.email,
  );

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json['id'],
    name: json['name'],
    specialization: json['specialization'],
    email: json['email'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'specialization': specialization,
    'email': email,
  };
}
