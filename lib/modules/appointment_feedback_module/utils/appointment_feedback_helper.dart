// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppointmentFeedbackHelper {
  final BuildContext context;
  final ValueNotifier<bool> showSuccessDialog;

  const AppointmentFeedbackHelper({
    required this.context,
    required this.showSuccessDialog,
  });
  void submitFeedback() {
    showSuccessDialog.value = true;
  }

  void closeSuccessDialog() {
    showSuccessDialog.value = false;
    Navigator.of(context).pop();
  }
}
