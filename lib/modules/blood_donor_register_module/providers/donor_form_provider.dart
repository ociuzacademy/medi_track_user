import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donor_register_module/classes/blood_donor_register_data.dart';

class DonorFormProvider with ChangeNotifier {
  // Form state
  String? _selectedBloodGroup;
  DateTime? _lastDonationDate;
  bool _underMedication = false;
  bool _recentIllness = true;
  bool _confirmationChecked = false;
  String? _location;

  static const List<String> locations = [
    'Select your location',
    'Palakkad',
    'Thrissur',
    'Ernakulam',
  ];

  // Form controllers
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _illnessDetailsController =
      TextEditingController();

  // Getters
  String? get selectedBloodGroup => _selectedBloodGroup;
  DateTime? get lastDonationDate => _lastDonationDate;
  bool get underMedication => _underMedication;
  bool get recentIllness => _recentIllness;
  bool get confirmationChecked => _confirmationChecked;
  String? get location => _location;
  TextEditingController get weightController => _weightController;
  TextEditingController get illnessDetailsController =>
      _illnessDetailsController;

  // Setters
  void setSelectedBloodGroup(String? value) {
    _selectedBloodGroup = value;
    notifyListeners();
  }

  void setLastDonationDate(DateTime? value) {
    _lastDonationDate = value;
    notifyListeners();
  }

  void setUnderMedication(bool value) {
    _underMedication = value;
    notifyListeners();
  }

  void setRecentIllness(bool value) {
    _recentIllness = value;
    notifyListeners();
  }

  void setConfirmationChecked(bool value) {
    _confirmationChecked = value;
    notifyListeners();
  }

  void setLocation(String? value) {
    _location = value;
    notifyListeners();
  }

  // Form validation and submission
  bool validateForm(GlobalKey<FormState> formKey) {
    if (!formKey.currentState!.validate()) {
      return false;
    }

    if (!_confirmationChecked) {
      return false;
    }

    return true;
  }

  BloodDonorRegisterData? submitForm(GlobalKey<FormState> formKey) {
    if (!validateForm(formKey)) {
      return null;
    }

    if (_selectedBloodGroup == null) {
      return null;
    }

    // if (_lastDonationDate == null) {
    //   return null;
    // }

    if (_weightController.text.trim().isEmpty) {
      return null;
    }

    if (_recentIllness && _illnessDetailsController.text.trim().isEmpty) {
      return null;
    }

    if (_location == null) {
      return null;
    }

    return BloodDonorRegisterData(
      bloodGroup: _selectedBloodGroup!,
      lastDonationDate: _lastDonationDate,
      underMedication: _underMedication,
      hadRecentIllness: _recentIllness,
      location: _location!,
      weight: double.parse(_weightController.text.trim()),
      illnessDetails: _illnessDetailsController.text.trim(),
    );
  }

  // Reset form
  void resetForm() {
    _selectedBloodGroup = null;
    _lastDonationDate = null;
    _underMedication = false;
    _recentIllness = true;
    _confirmationChecked = false;
    _weightController.clear();
    _illnessDetailsController.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    _weightController.dispose();
    _illnessDetailsController.dispose();
    super.dispose();
  }
}
