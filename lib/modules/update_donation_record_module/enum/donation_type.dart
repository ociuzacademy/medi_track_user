// models/donation_form_data.dart

enum DonationType { wholeBlood, plasma, platelets, redCells }

extension DonationTypeExtension on DonationType {
  String get displayName {
    switch (this) {
      case DonationType.wholeBlood:
        return 'Whole Blood';
      case DonationType.plasma:
        return 'Plasma';
      case DonationType.platelets:
        return 'Platelets';
      case DonationType.redCells:
        return 'Red Cells';
    }
  }

  String get value {
    switch (this) {
      case DonationType.wholeBlood:
        return 'Whole Blood';
      case DonationType.plasma:
        return 'Plasma';
      case DonationType.platelets:
        return 'Platelets';
      case DonationType.redCells:
        return 'Red Cells';
    }
  }
}
