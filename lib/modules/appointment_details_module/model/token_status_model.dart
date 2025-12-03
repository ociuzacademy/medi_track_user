// To parse this JSON data, do
//
//     final tokenStatusModel = tokenStatusModelFromJson(jsonString);

import 'dart:convert';

TokenStatusModel tokenStatusModelFromJson(String str) =>
    TokenStatusModel.fromJson(json.decode(str));

String tokenStatusModelToJson(TokenStatusModel data) =>
    json.encode(data.toJson());

class TokenStatusModel {
  final String status;
  final String doctor;
  final TToken currentToken;
  final TToken nextToken;
  final int totalTokens;

  const TokenStatusModel({
    required this.status,
    required this.doctor,
    required this.currentToken,
    required this.nextToken,
    required this.totalTokens,
  });

  TokenStatusModel copyWith({
    String? status,
    String? doctor,
    TToken? currentToken,
    TToken? nextToken,
    int? totalTokens,
  }) => TokenStatusModel(
    status: status ?? this.status,
    doctor: doctor ?? this.doctor,
    currentToken: currentToken ?? this.currentToken,
    nextToken: nextToken ?? this.nextToken,
    totalTokens: totalTokens ?? this.totalTokens,
  );

  factory TokenStatusModel.fromJson(Map<String, dynamic> json) =>
      TokenStatusModel(
        status: json['status'],
        doctor: json['doctor'],
        currentToken: TToken.fromJson(json['current_token']),
        nextToken: TToken.fromJson(json['next_token']),
        totalTokens: json['total_tokens'],
      );

  Map<String, dynamic> toJson() => {
    'status': status,
    'doctor': doctor,
    'current_token': currentToken.toJson(),
    'next_token': nextToken.toJson(),
    'total_tokens': totalTokens,
  };
}

class TToken {
  final int? tokenNumber;
  final String? patientName;
  final int? appointmentId;

  const TToken({
    required this.tokenNumber,
    required this.patientName,
    required this.appointmentId,
  });

  TToken copyWith({
    int? tokenNumber,
    String? patientName,
    int? appointmentId,
  }) => TToken(
    tokenNumber: tokenNumber ?? this.tokenNumber,
    patientName: patientName ?? this.patientName,
    appointmentId: appointmentId ?? this.appointmentId,
  );

  factory TToken.fromJson(Map<String, dynamic> json) => TToken(
    tokenNumber: json['token_number'],
    patientName: json['patient_name'],
    appointmentId: json['appointment_id'],
  );

  Map<String, dynamic> toJson() => {
    'token_number': tokenNumber,
    'patient_name': patientName,
    'appointment_id': appointmentId,
  };
}
