// feedback_provider.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_feedback_module/classes/feedback_data.dart';

class FeedbackProvider with ChangeNotifier {
  final int appointmentId;

  // Form state
  int _overallRating = 0;
  double _doctorInteraction = 1.0;
  double _hospitalService = 1.0;
  final TextEditingController _commentsController = TextEditingController();

  FeedbackProvider({required this.appointmentId});

  // Getters
  int get overallRating => _overallRating;
  double get doctorInteraction => _doctorInteraction;
  double get hospitalService => _hospitalService;
  TextEditingController get commentsController => _commentsController;

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

  // Form validation
  bool get isFormValid {
    return _overallRating > 0 && _doctorInteraction > 0 && _hospitalService > 0;
  }

  FeedbackData? get feedbackData {
    if (!isFormValid) {
      return null;
    }
    return FeedbackData(
      appointmentId: appointmentId,
      starRating: _overallRating,
      doctorInteractionRating: _doctorInteraction,
      hospitalServiceRating: _hospitalService,
      comments: _commentsController.text.trim(),
    );
  }

  // Reset form
  void resetForm() {
    _overallRating = 4;
    _doctorInteraction = 4.0;
    _hospitalService = 3.0;
    _commentsController.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    _commentsController.dispose();
    super.dispose();
  }
}
