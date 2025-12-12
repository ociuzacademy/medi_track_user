// To parse this JSON data, do
//
//     final acceptBloodRequestResponseModel = acceptBloodRequestResponseModelFromJson(jsonString);

import 'dart:convert';

AcceptBloodRequestResponseModel acceptBloodRequestResponseModelFromJson(
  String str,
) => AcceptBloodRequestResponseModel.fromJson(json.decode(str));

String acceptBloodRequestResponseModelToJson(
  AcceptBloodRequestResponseModel data,
) => json.encode(data.toJson());

class AcceptBloodRequestResponseModel {
  final String message;

  const AcceptBloodRequestResponseModel({required this.message});

  AcceptBloodRequestResponseModel copyWith({String? message}) =>
      AcceptBloodRequestResponseModel(message: message ?? this.message);

  factory AcceptBloodRequestResponseModel.fromJson(Map<String, dynamic> json) =>
      AcceptBloodRequestResponseModel(message: json['message']);

  Map<String, dynamic> toJson() => {'message': message};
}
