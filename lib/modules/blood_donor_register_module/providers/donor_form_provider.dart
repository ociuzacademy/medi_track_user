import 'package:flutter/material.dart';

class DonorFormProvider with ChangeNotifier {
  // Form state
  String? _selectedBloodGroup;
  String? _lastDonationDate;
  bool _underMedication = false;
  bool _recentIllness = true;
  bool _confirmationChecked = false;
  bool _showSuccessDialog = false;

  // Form controllers
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _illnessDetailsController =
      TextEditingController();

  // Getters
  String? get selectedBloodGroup => _selectedBloodGroup;
  String? get lastDonationDate => _lastDonationDate;
  bool get underMedication => _underMedication;
  bool get recentIllness => _recentIllness;
  bool get confirmationChecked => _confirmationChecked;
  bool get showSuccessDialog => _showSuccessDialog;
  TextEditingController get weightController => _weightController;
  TextEditingController get illnessDetailsController =>
      _illnessDetailsController;

  // Setters
  void setSelectedBloodGroup(String? value) {
    _selectedBloodGroup = value;
    notifyListeners();
  }

  void setLastDonationDate(String? value) {
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

  void setShowSuccessDialog(bool value) {
    _showSuccessDialog = value;
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

  void submitForm(GlobalKey<FormState> formKey) {
    if (validateForm(formKey)) {
      _showSuccessDialog = true;
      notifyListeners();
    }
  }

  void closeSuccessDialog(BuildContext context) {
    _showSuccessDialog = false;
    Navigator.pop(context);
    notifyListeners();
  }

  // Reset form
  void resetForm() {
    _selectedBloodGroup = null;
    _lastDonationDate = null;
    _underMedication = false;
    _recentIllness = true;
    _confirmationChecked = false;
    _showSuccessDialog = false;
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
