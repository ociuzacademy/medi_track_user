// To parse this JSON data, do
//
//     final expectedTokenModel = expectedTokenModelFromJson(jsonString);

import 'dart:convert';

ExpectedTokenModel expectedTokenModelFromJson(String str) =>
    ExpectedTokenModel.fromJson(json.decode(str));

String expectedTokenModelToJson(ExpectedTokenModel data) =>
    json.encode(data.toJson());

class ExpectedTokenModel {
  final int doctorId;
  final String doctorName;
  final DateTime date;
  final int expectedTokenNumber;

  const ExpectedTokenModel({
    required this.doctorId,
    required this.doctorName,
    required this.date,
    required this.expectedTokenNumber,
  });

  ExpectedTokenModel copyWith({
    int? doctorId,
    String? doctorName,
    DateTime? date,
    int? expectedTokenNumber,
  }) => ExpectedTokenModel(
    doctorId: doctorId ?? this.doctorId,
    doctorName: doctorName ?? this.doctorName,
    date: date ?? this.date,
    expectedTokenNumber: expectedTokenNumber ?? this.expectedTokenNumber,
  );

  factory ExpectedTokenModel.fromJson(Map<String, dynamic> json) =>
      ExpectedTokenModel(
        doctorId: json['doctor_id'],
        doctorName: json['doctor_name'],
        date: DateTime.parse(json['date']),
        expectedTokenNumber: json['expected_token_number'],
      );

  Map<String, dynamic> toJson() => {
    'doctor_id': doctorId,
    'doctor_name': doctorName,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'expected_token_number': expectedTokenNumber,
  };
}
