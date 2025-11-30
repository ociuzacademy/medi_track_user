// To parse this JSON data, do
//
//     final cardPaymentResponseModel = cardPaymentResponseModelFromJson(jsonString);

import 'dart:convert';

CardPaymentResponseModel cardPaymentResponseModelFromJson(String str) =>
    CardPaymentResponseModel.fromJson(json.decode(str));

String cardPaymentResponseModelToJson(CardPaymentResponseModel data) =>
    json.encode(data.toJson());

class CardPaymentResponseModel {
  final String message;
  final int appointmentId;
  final String doctor;
  final DateTime date;
  final int tokenNumber;
  final double amount;
  final String paymentStatus;
  final String status;

  const CardPaymentResponseModel({
    required this.message,
    required this.appointmentId,
    required this.doctor,
    required this.date,
    required this.tokenNumber,
    required this.amount,
    required this.paymentStatus,
    required this.status,
  });

  CardPaymentResponseModel copyWith({
    String? message,
    int? appointmentId,
    String? doctor,
    DateTime? date,
    int? tokenNumber,
    double? amount,
    String? paymentStatus,
    String? status,
  }) => CardPaymentResponseModel(
    message: message ?? this.message,
    appointmentId: appointmentId ?? this.appointmentId,
    doctor: doctor ?? this.doctor,
    date: date ?? this.date,
    tokenNumber: tokenNumber ?? this.tokenNumber,
    amount: amount ?? this.amount,
    paymentStatus: paymentStatus ?? this.paymentStatus,
    status: status ?? this.status,
  );

  factory CardPaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      CardPaymentResponseModel(
        message: json['message'],
        appointmentId: json['appointment_id'],
        doctor: json['doctor'],
        date: DateTime.parse(json['date']),
        tokenNumber: json['token_number'],
        amount: json['amount']?.toDouble() ?? 0.0,
        paymentStatus: json['payment_status'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'appointment_id': appointmentId,
    'doctor': doctor,
    'date':
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    'token_number': tokenNumber,
    'amount': amount,
    'payment_status': paymentStatus,
    'status': status,
  };
}
