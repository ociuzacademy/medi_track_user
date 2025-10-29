// models/blood_donation_history.dart
import 'package:flutter/material.dart';

class BloodDonationHistory {
  final String id;
  final DateTime donationDate;
  final String donationType;
  final String unitsDonated;
  final DonationStatus status;

  const BloodDonationHistory({
    required this.id,
    required this.donationDate,
    required this.donationType,
    required this.unitsDonated,
    required this.status,
  });

  String get formattedDate {
    final day = donationDate.day;
    final month = _getMonthName(donationDate.month);
    final year = donationDate.year;
    return '$day $month $year';
  }

  String _getMonthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[month - 1];
  }
}

enum DonationStatus { successful, pending }

extension DonationStatusExtension on DonationStatus {
  String get displayName {
    switch (this) {
      case DonationStatus.successful:
        return 'Successful';
      case DonationStatus.pending:
        return 'Pending Update';
    }
  }

  Color get color {
    switch (this) {
      case DonationStatus.successful:
        return const Color(0xFF16A34A);
      case DonationStatus.pending:
        return const Color(0xFFEA580C);
    }
  }

  Color get backgroundColor {
    switch (this) {
      case DonationStatus.successful:
        return const Color(0xFFDCFCE7);
      case DonationStatus.pending:
        return const Color(0xFFFFEDD5);
    }
  }

  Color get darkBackgroundColor {
    switch (this) {
      case DonationStatus.successful:
        return const Color(0xFF166534);
      case DonationStatus.pending:
        return const Color(0xFF9A3412);
    }
  }
}
