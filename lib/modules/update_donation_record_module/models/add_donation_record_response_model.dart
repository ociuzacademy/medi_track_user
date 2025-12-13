// To parse this JSON data, do
//
//     final addDonationRecordResponseModel = addDonationRecordResponseModelFromJson(jsonString);

import 'dart:convert';

AddDonationRecordResponseModel addDonationRecordResponseModelFromJson(
  String str,
) => AddDonationRecordResponseModel.fromJson(json.decode(str));

String addDonationRecordResponseModelToJson(
  AddDonationRecordResponseModel data,
) => json.encode(data.toJson());

class AddDonationRecordResponseModel {
  final String message;
  final int recordId;

  const AddDonationRecordResponseModel({
    required this.message,
    required this.recordId,
  });

  AddDonationRecordResponseModel copyWith({String? message, int? recordId}) =>
      AddDonationRecordResponseModel(
        message: message ?? this.message,
        recordId: recordId ?? this.recordId,
      );

  factory AddDonationRecordResponseModel.fromJson(Map<String, dynamic> json) =>
      AddDonationRecordResponseModel(
        message: json['message'],
        recordId: json['record_id'],
      );

  Map<String, dynamic> toJson() => {'message': message, 'record_id': recordId};
}
