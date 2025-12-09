// To parse this JSON data, do
//
//     final feedbackDetailsModel = feedbackDetailsModelFromJson(jsonString);

import 'dart:convert';

FeedbackDetailsModel feedbackDetailsModelFromJson(String str) =>
    FeedbackDetailsModel.fromJson(json.decode(str));

String feedbackDetailsModelToJson(FeedbackDetailsModel data) =>
    json.encode(data.toJson());

class FeedbackDetailsModel {
  final int feedbackId;
  final Appointment appointment;
  final Feedback feedback;

  const FeedbackDetailsModel({
    required this.feedbackId,
    required this.appointment,
    required this.feedback,
  });

  FeedbackDetailsModel copyWith({
    int? feedbackId,
    Appointment? appointment,
    Feedback? feedback,
  }) => FeedbackDetailsModel(
    feedbackId: feedbackId ?? this.feedbackId,
    appointment: appointment ?? this.appointment,
    feedback: feedback ?? this.feedback,
  );

  factory FeedbackDetailsModel.fromJson(Map<String, dynamic> json) =>
      FeedbackDetailsModel(
        feedbackId: json['feedback_id'],
        appointment: Appointment.fromJson(json['appointment']),
        feedback: Feedback.fromJson(json['feedback']),
      );

  Map<String, dynamic> toJson() => {
    'feedback_id': feedbackId,
    'appointment': appointment.toJson(),
    'feedback': feedback.toJson(),
  };
}

class Appointment {
  final int id;
  final DateTime date;
  final String status;
  final int tokenNumber;
  final Doctor doctor;
  final Patient patient;

  const Appointment({
    required this.id,
    required this.date,
    required this.status,
    required this.tokenNumber,
    required this.doctor,
    required this.patient,
  });

  Appointment copyWith({
    int? id,
    DateTime? date,
    String? status,
    int? tokenNumber,
    Doctor? doctor,
    Patient? patient,
  }) => Appointment(
    id: id ?? this.id,
    date: date ?? this.date,
    status: status ?? this.status,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    doctor: doctor ?? this.doctor,
    patient: patient ?? this.patient,
  );

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json['id'],
    date: DateTime.parse(json['date']),
    status: json['status'],
    tokenNumber: json['token_number'],
    doctor: Doctor.fromJson(json['doctor']),
    patient: Patient.fromJson(json['patient']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'status': status,
    'token_number': tokenNumber,
    'doctor': doctor.toJson(),
    'patient': patient.toJson(),
  };
}

class Doctor {
  final int id;
  final String name;
  final String specialization;
  final String email;
  final String image;

  const Doctor({
    required this.id,
    required this.name,
    required this.specialization,
    required this.email,
    required this.image,
  });

  Doctor copyWith({
    int? id,
    String? name,
    String? specialization,
    String? email,
    String? image,
  }) => Doctor(
    id: id ?? this.id,
    name: name ?? this.name,
    specialization: specialization ?? this.specialization,
    email: email ?? this.email,
    image: image ?? this.image,
  );

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json['id'],
    name: json['name'],
    specialization: json['specialization'],
    email: json['email'],
    image: json['image'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'specialization': specialization,
    'email': email,
    'image': image,
  };
}

class Patient {
  final int id;
  final String username;
  final String email;
  final String phoneNumber;

  const Patient({
    required this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
  });

  Patient copyWith({
    int? id,
    String? username,
    String? email,
    String? phoneNumber,
  }) => Patient(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    id: json['id'],
    username: json['username'],
    email: json['email'],
    phoneNumber: json['phone_number'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'phone_number': phoneNumber,
  };
}

class Feedback {
  final int starRating;
  final double doctorInteractionRating;
  final double hospitalServiceRating;
  final String comments;
  final DateTime submittedOn;

  const Feedback({
    required this.starRating,
    required this.doctorInteractionRating,
    required this.hospitalServiceRating,
    required this.comments,
    required this.submittedOn,
  });

  Feedback copyWith({
    int? starRating,
    double? doctorInteractionRating,
    double? hospitalServiceRating,
    String? comments,
    DateTime? submittedOn,
  }) => Feedback(
    starRating: starRating ?? this.starRating,
    doctorInteractionRating:
        doctorInteractionRating ?? this.doctorInteractionRating,
    hospitalServiceRating: hospitalServiceRating ?? this.hospitalServiceRating,
    comments: comments ?? this.comments,
    submittedOn: submittedOn ?? this.submittedOn,
  );

  factory Feedback.fromJson(Map<String, dynamic> json) => Feedback(
    starRating: json['star_rating'],
    doctorInteractionRating: json['doctor_interaction_rating']?.toDouble(),
    hospitalServiceRating: json['hospital_service_rating']?.toDouble(),
    comments: json['comments'],
    submittedOn: DateTime.parse(json['submitted_on']),
  );

  Map<String, dynamic> toJson() => {
    'star_rating': starRating,
    'doctor_interaction_rating': doctorInteractionRating,
    'hospital_service_rating': hospitalServiceRating,
    'comments': comments,
    'submitted_on': submittedOn.toIso8601String(),
  };
}
