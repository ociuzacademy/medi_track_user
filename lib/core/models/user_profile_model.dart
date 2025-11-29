// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

class UserProfileModel {
  final int id;
  final String username;
  final String email;
  final String address;
  final String password;
  final String phone;
  final String image;
  final String gender;
  final DateTime birthDate;
  final String bloodGroup;

  const UserProfileModel({
    required this.id,
    required this.username,
    required this.email,
    required this.address,
    required this.password,
    required this.phone,
    required this.image,
    required this.gender,
    required this.birthDate,
    required this.bloodGroup,
  });

  UserProfileModel copyWith({
    int? id,
    String? username,
    String? email,
    String? address,
    String? password,
    String? phone,
    String? image,
    String? gender,
    DateTime? birthDate,
    String? bloodGroup,
  }) => UserProfileModel(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
    address: address ?? this.address,
    password: password ?? this.password,
    phone: phone ?? this.phone,
    image: image ?? this.image,
    gender: gender ?? this.gender,
    birthDate: birthDate ?? this.birthDate,
    bloodGroup: bloodGroup ?? this.bloodGroup,
  );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      UserProfileModel(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        address: json['address'],
        password: json['password'],
        phone: json['phone'],
        image: json['image'],
        gender: json['gender'],
        birthDate: DateTime.parse(json['birth_date']),
        bloodGroup: json['blood_group'],
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'address': address,
    'password': password,
    'phone': phone,
    'image': image,
    'gender': gender,
    'birth_date':
        "${birthDate.year.toString().padLeft(4, '0')}-${birthDate.month.toString().padLeft(2, '0')}-${birthDate.day.toString().padLeft(2, '0')}",
    'blood_group': bloodGroup,
  };
}
