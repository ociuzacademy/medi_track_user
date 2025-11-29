// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  final String status;
  final String message;
  final String userId;
  final Data data;

  LoginResponseModel({
    required this.status,
    required this.message,
    required this.userId,
    required this.data,
  });

  LoginResponseModel copyWith({
    String? status,
    String? message,
    String? userId,
    Data? data,
  }) => LoginResponseModel(
    status: status ?? this.status,
    message: message ?? this.message,
    userId: userId ?? this.userId,
    data: data ?? this.data,
  );

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        status: json['status'],
        message: json['message'],
        userId: json['user_id'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
    'status': status,
    'message': message,
    'user_id': userId,
    'data': data.toJson(),
  };
}

class Data {
  final String email;
  final String password;

  Data({required this.email, required this.password});

  Data copyWith({String? email, String? password}) =>
      Data(email: email ?? this.email, password: password ?? this.password);

  factory Data.fromJson(Map<String, dynamic> json) =>
      Data(email: json['email'], password: json['password']);

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
