// providers/donation_form_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/update_donation_record_module/models/donation_form_data.dart';

class DonationFormProvider with ChangeNotifier {
  DonationFormData _formData = DonationFormData();
  bool _isSubmitting = false;
  bool _showSuccess = false;

  DonationFormData get formData => _formData;
  bool get isSubmitting => _isSubmitting;
  bool get showSuccess => _showSuccess;

  void updateDonationDate(DateTime? date) {
    _formData = _formData.copyWith(donationDate: date);
    notifyListeners();
  }

  void updateLocationName(String location) {
    _formData = _formData.copyWith(locationName: location);
    notifyListeners();
  }

  void updateDonationType(DonationType type) {
    _formData = _formData.copyWith(donationType: type);
    notifyListeners();
  }

  void updateUnitsDonated(String units) {
    _formData = _formData.copyWith(unitsDonated: units);
    notifyListeners();
  }

  Future<void> submitForm(BuildContext context) async {
    FocusScope.of(context).unfocus();
    if (!_formData.isValid) return;

    _isSubmitting = true;
    notifyListeners();

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    _isSubmitting = false;
    _showSuccess = true;
    notifyListeners();

    // Hide success message after 3 seconds
    await Future.delayed(const Duration(seconds: 3));
    _showSuccess = false;
    notifyListeners();
  }

  void resetForm() {
    _formData = DonationFormData();
    _isSubmitting = false;
    _showSuccess = false;
    notifyListeners();
  }

  void hideSuccess() {
    _showSuccess = false;
    notifyListeners();
  }
}
