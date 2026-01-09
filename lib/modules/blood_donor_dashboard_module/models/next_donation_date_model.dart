// To parse this JSON data, do
//
//     final nextDonationDateModel = nextDonationDateModelFromJson(jsonString);

import 'dart:convert';

import 'package:medi_track/core/enums/donation_type.dart';

NextDonationDateModel nextDonationDateModelFromJson(String str) =>
    NextDonationDateModel.fromJson(json.decode(str));

String nextDonationDateModelToJson(NextDonationDateModel data) =>
    json.encode(data.toJson());

class NextDonationDateModel {
  final String donor;
  final String bloodGroup;
  final int totalDonations;
  final DateTime? lastDonationDate;
  final DonationType? lastDonationType;
  final DateTime nextDonationDate;
  final bool eligible;

  const NextDonationDateModel({
    required this.donor,
    required this.bloodGroup,
    required this.totalDonations,
    this.lastDonationDate,
    this.lastDonationType,
    required this.nextDonationDate,
    required this.eligible,
  });

  NextDonationDateModel copyWith({
    String? donor,
    String? bloodGroup,
    int? totalDonations,
    DateTime? lastDonationDate,
    DonationType? lastDonationType,
    DateTime? nextDonationDate,
    bool? eligible,
  }) => NextDonationDateModel(
    donor: donor ?? this.donor,
    bloodGroup: bloodGroup ?? this.bloodGroup,
    totalDonations: totalDonations ?? this.totalDonations,
    lastDonationDate: lastDonationDate ?? this.lastDonationDate,
    lastDonationType: lastDonationType ?? this.lastDonationType,
    nextDonationDate: nextDonationDate ?? this.nextDonationDate,
    eligible: eligible ?? this.eligible,
  );

  factory NextDonationDateModel.fromJson(Map<String, dynamic> json) =>
      NextDonationDateModel(
        donor: json['donor'],
        bloodGroup: json['blood_group'],
        totalDonations: json['total_donations'],
        lastDonationDate: json['last_donation_date'] != null
            ? DateTime.parse(json['last_donation_date'])
            : null,
        lastDonationType: json['last_donation_type'] != null
            ? DonationType.fromJson(json['last_donation_type'])
            : null,
        nextDonationDate: DateTime.parse(json['next_donation_date']),
        eligible: json['eligible'],
      );

  Map<String, dynamic> toJson() => {
    'donor': donor,
    'blood_group': bloodGroup,
    'total_donations': totalDonations,
    'last_donation_date': lastDonationDate != null
        ? "${lastDonationDate!.year.toString().padLeft(4, '0')}-${lastDonationDate!.month.toString().padLeft(2, '0')}-${lastDonationDate!.day.toString().padLeft(2, '0')}"
        : null,
    'last_donation_type': lastDonationType?.displayName,
    'next_donation_date':
        "${nextDonationDate.year.toString().padLeft(4, '0')}-${nextDonationDate.month.toString().padLeft(2, '0')}-${nextDonationDate.day.toString().padLeft(2, '0')}",
    'eligible': eligible,
  };
}
