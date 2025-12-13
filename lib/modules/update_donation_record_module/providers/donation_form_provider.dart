// providers/donation_form_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/update_donation_record_module/classes/update_donation_record_data.dart';
import 'package:medi_track/modules/update_donation_record_module/enum/donation_type.dart';

class DonationFormProvider with ChangeNotifier {
  DateTime? _donationDate;
  final TextEditingController locationController = TextEditingController();
  final TextEditingController unitsController = TextEditingController();
  DonationType _donationType = DonationType.wholeBlood;

  DateTime? get donationDate => _donationDate;
  DonationType get donationType => _donationType;
  // Location and Units are now accessed via controllers

  @override
  void dispose() {
    locationController.dispose();
    unitsController.dispose();
    super.dispose();
  }

  void updateDonationDate(DateTime? date) {
    _donationDate = date;
    notifyListeners();
  }

  // updateLocationName and updateUnitsDonated are removed as controllers handle updates

  void updateDonationType(DonationType type) {
    _donationType = type;
    notifyListeners();
  }

  void resetForm() {
    _donationDate = null;
    locationController.clear();
    unitsController.clear();
    notifyListeners();
  }

  String? validateLocationName(String? value) {
    // Value comes from the TextFormField, which is synced with controller
    if (value == null || value.trim().isEmpty) {
      return 'Please enter a location name';
    }
    if (value.trim().length < 2) {
      return 'Location name must be at least 2 characters';
    }
    return null;
  }

  String? validateUnitsDonated(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter units donated';
    }

    final units = double.tryParse(value.trim());
    if (units == null) {
      return 'Please enter a valid number';
    }

    if (units <= 0) {
      return 'Units must be greater than 0';
    }

    if (units > 10) {
      return 'Units cannot exceed 10';
    }

    return null;
  }

  UpdateDonationRecordData? toUpdateDonationRecordData() {
    final locationName = locationController.text.trim();
    final unitsString = unitsController.text.trim();
    final unitsDonated = double.tryParse(unitsString) ?? 0;

    if (donationDate == null || locationName.isEmpty || unitsDonated <= 0) {
      return null;
    }
    return UpdateDonationRecordData(
      date: donationDate!,
      location: locationName,
      donationType: donationType,
      units: unitsDonated,
    );
  }
}
