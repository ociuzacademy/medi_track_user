// feedback_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';

class FeedbackProvider with ChangeNotifier {
  // Form state
  int _overallRating = 4;
  double _doctorInteraction = 4.0;
  double _hospitalService = 3.0;
  final TextEditingController _commentsController = TextEditingController();
  bool _showSuccessDialog = false;
  bool _isSubmitting = false;

  // Getters
  int get overallRating => _overallRating;
  double get doctorInteraction => _doctorInteraction;
  double get hospitalService => _hospitalService;
  TextEditingController get commentsController => _commentsController;
  bool get showSuccessDialog => _showSuccessDialog;
  bool get isSubmitting => _isSubmitting;

  // Setters
  void setOverallRating(int rating) {
    _overallRating = rating;
    notifyListeners();
  }

  void setDoctorInteraction(double value) {
    _doctorInteraction = value;
    notifyListeners();
  }

  void setHospitalService(double value) {
    _hospitalService = value;
    notifyListeners();
  }

  void setShowSuccessDialog(bool value) {
    _showSuccessDialog = value;
    notifyListeners();
  }

  void setIsSubmitting(bool value) {
    _isSubmitting = value;
    notifyListeners();
  }

  // Form validation
  bool get isFormValid {
    return _overallRating > 0; // At least some rating is required
  }

  // Submit feedback
  Future<void> submitFeedback(BuildContext context) async {
    if (!isFormValid) {
      CustomSnackbar.showError(
        context,
        message: 'Please provide at least an overall rating',
      );

      return;
    }

    setIsSubmitting(true);

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    setIsSubmitting(false);
    setShowSuccessDialog(true);

    // Print feedback data (in real app, send to API)
    debugPrint('Feedback submitted:');
    debugPrint('Overall Rating: $_overallRating');
    debugPrint('Doctor Interaction: $_doctorInteraction');
    debugPrint('Hospital Service: $_hospitalService');
    debugPrint('Comments: ${_commentsController.text}');
  }

  // Close success dialog
  void closeSuccessDialog(BuildContext context) {
    setShowSuccessDialog(false);
    Navigator.of(context).pop();
  }

  // Reset form
  void resetForm() {
    _overallRating = 4;
    _doctorInteraction = 4.0;
    _hospitalService = 3.0;
    _commentsController.clear();
    _showSuccessDialog = false;
    _isSubmitting = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _commentsController.dispose();
    super.dispose();
  }
}
