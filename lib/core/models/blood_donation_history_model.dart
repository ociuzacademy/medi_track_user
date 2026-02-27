// To parse this JSON data, do
//
//     final bloodDonationHistoryModel = bloodDonationHistoryModelFromJson(jsonString);

import 'dart:convert';

List<BloodDonationHistoryModel> bloodDonationHistoryModelFromJson(String str) =>
    List<BloodDonationHistoryModel>.from(
      json.decode(str).map((x) => BloodDonationHistoryModel.fromJson(x)),
    );

String bloodDonationHistoryModelToJson(List<BloodDonationHistoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BloodDonationHistoryModel {
  final int recordId;
  final DateTime donationDate;
  final String location;
  final int units;
  final DateTime createdAt;

  const BloodDonationHistoryModel({
    required this.recordId,
    required this.donationDate,
    required this.location,
    required this.units,
    required this.createdAt,
  });

  BloodDonationHistoryModel copyWith({
    int? recordId,
    DateTime? donationDate,
    String? location,
    int? units,
    DateTime? createdAt,
  }) => BloodDonationHistoryModel(
    recordId: recordId ?? this.recordId,
    donationDate: donationDate ?? this.donationDate,
    location: location ?? this.location,
    units: units ?? this.units,
    createdAt: createdAt ?? this.createdAt,
  );

  factory BloodDonationHistoryModel.fromJson(Map<String, dynamic> json) =>
      BloodDonationHistoryModel(
        recordId: json['record_id'],
        donationDate: DateTime.parse(json['donation_date']),
        location: json['location'],
        units: json['units'],
        createdAt: DateTime.parse(json['created_at']),
      );

  Map<String, dynamic> toJson() => {
    'record_id': recordId,
    'donation_date':
        "${donationDate.year.toString().padLeft(4, '0')}-${donationDate.month.toString().padLeft(2, '0')}-${donationDate.day.toString().padLeft(2, '0')}",
    'location': location,
    'units': units,
    'created_at': createdAt.toIso8601String(),
  };
}
