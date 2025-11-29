// To parse this JSON data, do
//
//     final userRegisterResponseModel = userRegisterResponseModelFromJson(jsonString);

import 'dart:convert';

UserRegisterResponseModel userRegisterResponseModelFromJson(String str) =>
    UserRegisterResponseModel.fromJson(json.decode(str));

String userRegisterResponseModelToJson(UserRegisterResponseModel data) =>
    json.encode(data.toJson());

class UserRegisterResponseModel {
  final String status;
  final String message;
  final Data data;

  UserRegisterResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  UserRegisterResponseModel copyWith({
    String? status,
    String? message,
    Data? data,
  }) => UserRegisterResponseModel(
    status: status ?? this.status,
    message: message ?? this.message,
    data: data ?? this.data,
  );

  factory UserRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      UserRegisterResponseModel(
        status: json['status'],
        message: json['message'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
    'status': status,
    'message': message,
    'data': data.toJson(),
  };
}

class Data {
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

  Data({
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

  Data copyWith({
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
  }) => Data(
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

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
