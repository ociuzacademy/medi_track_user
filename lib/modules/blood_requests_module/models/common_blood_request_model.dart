// To parse this JSON data, do
//
//     final commonBloodRequestModel = commonBloodRequestModelFromJson(jsonString);

import 'dart:convert';

List<CommonBloodRequestModel> commonBloodRequestModelFromJson(String str) =>
    List<CommonBloodRequestModel>.from(
      json.decode(str).map((x) => CommonBloodRequestModel.fromJson(x)),
    );

String commonBloodRequestModelToJson(List<CommonBloodRequestModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommonBloodRequestModel {
  final int id;
  final String doctor;
  final String bloodGroup;
  final int unitsRequired;
  final String donationType;
  final DateTime donationDate;
  final String location;
  final String reason;
  final DateTime createdAt;

  const CommonBloodRequestModel({
    required this.id,
    required this.doctor,
    required this.bloodGroup,
    required this.unitsRequired,
    required this.donationType,
    required this.donationDate,
    required this.location,
    required this.reason,
    required this.createdAt,
  });

  CommonBloodRequestModel copyWith({
    int? id,
    String? doctor,
    String? bloodGroup,
    int? unitsRequired,
    String? donationType,
    DateTime? donationDate,
    String? location,
    String? reason,
    DateTime? createdAt,
  }) => CommonBloodRequestModel(
    id: id ?? this.id,
    doctor: doctor ?? this.doctor,
    bloodGroup: bloodGroup ?? this.bloodGroup,
    unitsRequired: unitsRequired ?? this.unitsRequired,
    donationType: donationType ?? this.donationType,
    donationDate: donationDate ?? this.donationDate,
    location: location ?? this.location,
    reason: reason ?? this.reason,
    createdAt: createdAt ?? this.createdAt,
  );

  factory CommonBloodRequestModel.fromJson(Map<String, dynamic> json) =>
      CommonBloodRequestModel(
        id: json['id'],
        doctor: json['doctor'],
        bloodGroup: json['blood_group'],
        unitsRequired: json['units_required'],
        donationType: json['donation_type'],
        donationDate: DateTime.parse(json['donation_date']),
        location: json['location'],
        reason: json['reason'],
        createdAt: DateTime.parse(json['created_at']),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'doctor': doctor,
    'blood_group': bloodGroup,
    'units_required': unitsRequired,
    'donation_type': donationType,
    'donation_date':
        "${donationDate.year.toString().padLeft(4, '0')}-${donationDate.month.toString().padLeft(2, '0')}-${donationDate.day.toString().padLeft(2, '0')}",
    'location': location,
    'reason': reason,
    'created_at': createdAt.toIso8601String(),
  };
}
