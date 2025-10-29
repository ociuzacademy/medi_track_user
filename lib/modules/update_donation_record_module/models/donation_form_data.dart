// models/donation_form_data.dart
class DonationFormData {
  DateTime? donationDate;
  String locationName;
  DonationType donationType;
  String unitsDonated;

  DonationFormData({
    this.donationDate,
    this.locationName = '',
    this.donationType = DonationType.wholeBlood,
    this.unitsDonated = '',
  });

  DonationFormData copyWith({
    DateTime? donationDate,
    String? locationName,
    DonationType? donationType,
    String? unitsDonated,
  }) {
    return DonationFormData(
      donationDate: donationDate ?? this.donationDate,
      locationName: locationName ?? this.locationName,
      donationType: donationType ?? this.donationType,
      unitsDonated: unitsDonated ?? this.unitsDonated,
    );
  }

  bool get isValid {
    return donationDate != null &&
        locationName.isNotEmpty &&
        unitsDonated.isNotEmpty;
  }
}

enum DonationType { wholeBlood, plasma, platelets, powerRed }

extension DonationTypeExtension on DonationType {
  String get displayName {
    switch (this) {
      case DonationType.wholeBlood:
        return 'Whole Blood';
      case DonationType.plasma:
        return 'Plasma';
      case DonationType.platelets:
        return 'Platelets';
      case DonationType.powerRed:
        return 'Power Red';
    }
  }

  String get value {
    switch (this) {
      case DonationType.wholeBlood:
        return 'whole_blood';
      case DonationType.plasma:
        return 'plasma';
      case DonationType.platelets:
        return 'platelets';
      case DonationType.powerRed:
        return 'power_red';
    }
  }
}
