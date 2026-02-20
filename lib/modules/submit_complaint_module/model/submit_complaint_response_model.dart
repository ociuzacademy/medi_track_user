// To parse this JSON data, do
//
//     final submitComplaintResponseModel = submitComplaintResponseModelFromJson(jsonString);

import 'dart:convert';

SubmitComplaintResponseModel submitComplaintResponseModelFromJson(String str) =>
    SubmitComplaintResponseModel.fromJson(json.decode(str));

String submitComplaintResponseModelToJson(SubmitComplaintResponseModel data) =>
    json.encode(data.toJson());

class SubmitComplaintResponseModel {
  final bool success;
  final String message;
  final Data data;

  SubmitComplaintResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  SubmitComplaintResponseModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) => SubmitComplaintResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    data: data ?? this.data,
  );

  factory SubmitComplaintResponseModel.fromJson(Map<String, dynamic> json) =>
      SubmitComplaintResponseModel(
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
  final int id;
  final int user;
  final String typeOfComplaint;
  final String subject;
  final String description;
  final String? image;
  final DateTime createdAt;

  Data({
    required this.id,
    required this.user,
    required this.typeOfComplaint,
    required this.subject,
    required this.description,
    this.image,
    required this.createdAt,
  });

  Data copyWith({
    int? id,
    int? user,
    String? typeOfComplaint,
    String? subject,
    String? description,
    String? image,
    DateTime? createdAt,
  }) => Data(
    id: id ?? this.id,
    user: user ?? this.user,
    typeOfComplaint: typeOfComplaint ?? this.typeOfComplaint,
    subject: subject ?? this.subject,
    description: description ?? this.description,
    image: image ?? this.image,
    createdAt: createdAt ?? this.createdAt,
  );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'],
    user: json['user'],
    typeOfComplaint: json['type_of_complaint'],
    subject: json['subject'],
    description: json['description'],
    image: json['image'],
    createdAt: DateTime.parse(json['created_at']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'user': user,
    'type_of_complaint': typeOfComplaint,
    'subject': subject,
    'description': description,
    'image': image,
    'created_at': createdAt.toIso8601String(),
  };
}
