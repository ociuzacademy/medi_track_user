// To parse this JSON data, do
//
//     final availableDoctorsModel = availableDoctorsModelFromJson(jsonString);

import 'dart:convert';

AvailableDoctorsModel availableDoctorsModelFromJson(String str) =>
    AvailableDoctorsModel.fromJson(json.decode(str));

String availableDoctorsModelToJson(AvailableDoctorsModel data) =>
    json.encode(data.toJson());

class AvailableDoctorsModel {
  final String department;
  final DateTime date;
  final List<AvailableDoctor> availableDoctors;

  const AvailableDoctorsModel({
    required this.department,
    required this.date,
    required this.availableDoctors,
  });

  AvailableDoctorsModel copyWith({
    String? department,
    DateTime? date,
    List<AvailableDoctor>? availableDoctors,
  }) => AvailableDoctorsModel(
    department: department ?? this.department,
    date: date ?? this.date,
    availableDoctors: availableDoctors ?? this.availableDoctors,
  );

  factory AvailableDoctorsModel.fromJson(Map<String, dynamic> json) =>
      AvailableDoctorsModel(
        department: json['department'],
        date: DateTime.parse(json['date']),
        availableDoctors: List<AvailableDoctor>.from(
          json['available_doctors'].map((x) => AvailableDoctor.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
    'department': department,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'available_doctors': List<dynamic>.from(
      availableDoctors.map((x) => x.toJson()),
    ),
  };
}

class AvailableDoctor {
  final int id;
  final String name;
  final String qualification;
  final String experience;
  final String email;
  final String phoneNumber;
  final String image;

  const AvailableDoctor({
    required this.id,
    required this.name,
    required this.qualification,
    required this.experience,
    required this.email,
    required this.phoneNumber,
    required this.image,
  });

  AvailableDoctor copyWith({
    int? id,
    String? name,
    String? qualification,
    String? experience,
    String? email,
    String? phoneNumber,
    String? image,
  }) => AvailableDoctor(
    id: id ?? this.id,
    name: name ?? this.name,
    qualification: qualification ?? this.qualification,
    experience: experience ?? this.experience,
    email: email ?? this.email,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    image: image ?? this.image,
  );

  factory AvailableDoctor.fromJson(Map<String, dynamic> json) =>
      AvailableDoctor(
        id: json['id'],
        name: json['name'],
        qualification: json['qualification'],
        experience: json['experience'],
        email: json['email'],
        phoneNumber: json['phone_number'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'qualification': qualification,
    'experience': experience,
    'email': email,
    'phone_number': phoneNumber,
    'image': image,
  };
}
