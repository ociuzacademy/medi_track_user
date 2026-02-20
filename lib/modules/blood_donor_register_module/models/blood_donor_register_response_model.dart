// To parse this JSON data, do
//
//     final bloodDonorRegisterResponseModel = bloodDonorRegisterResponseModelFromJson(jsonString);

import 'dart:convert';

BloodDonorRegisterResponseModel bloodDonorRegisterResponseModelFromJson(
  String str,
) => BloodDonorRegisterResponseModel.fromJson(json.decode(str));

String bloodDonorRegisterResponseModelToJson(
  BloodDonorRegisterResponseModel data,
) => json.encode(data.toJson());

class BloodDonorRegisterResponseModel {
  final bool success;
  final String message;
  final Data data;

  const BloodDonorRegisterResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  BloodDonorRegisterResponseModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) => BloodDonorRegisterResponseModel(
    success: success ?? this.success,
    message: message ?? this.message,
    data: data ?? this.data,
  );

  factory BloodDonorRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      BloodDonorRegisterResponseModel(
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
  final String bloodGroup;
  final String location;
  final DateTime? lastDonationDate;
  final String weight;
  final bool underMedication;
  final bool hadRecentIllness;
  final String? illnessDetails;
  final DateTime createdAt;

  const Data({
    required this.id,
    required this.bloodGroup,
    required this.location,
    this.lastDonationDate,
    required this.weight,
    required this.underMedication,
    required this.hadRecentIllness,
    this.illnessDetails,
    required this.createdAt,
  });

  Data copyWith({
    int? id,
    String? bloodGroup,
    String? location,
    DateTime? lastDonationDate,
    String? weight,
    bool? underMedication,
    bool? hadRecentIllness,
    String? illnessDetails,
    DateTime? createdAt,
  }) => Data(
    id: id ?? this.id,
    bloodGroup: bloodGroup ?? this.bloodGroup,
    location: location ?? this.location,
    lastDonationDate: lastDonationDate ?? this.lastDonationDate,
    weight: weight ?? this.weight,
    underMedication: underMedication ?? this.underMedication,
    hadRecentIllness: hadRecentIllness ?? this.hadRecentIllness,
    illnessDetails: illnessDetails ?? this.illnessDetails,
    createdAt: createdAt ?? this.createdAt,
  );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'],
    bloodGroup: json['blood_group'],
    location: json['location'],
    lastDonationDate: json['last_donation_date'] != null
        ? DateTime.parse(json['last_donation_date'])
        : null,
    weight: json['weight'],
    underMedication: json['under_medication'],
    hadRecentIllness: json['had_recent_illness'],
    illnessDetails: json['illness_details'],
    createdAt: DateTime.parse(json['created_at']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'blood_group': bloodGroup,
    'location': location,
    'last_donation_date':
        "${lastDonationDate?.year.toString().padLeft(4, '0')}-${lastDonationDate?.month.toString().padLeft(2, '0')}-${lastDonationDate?.day.toString().padLeft(2, '0')}",
    'weight': weight,
    'under_medication': underMedication,
    'had_recent_illness': hadRecentIllness,
    'illness_details': illnessDetails,
    'created_at': createdAt.toIso8601String(),
  };
}
