// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/submit_complaint_module/providers/complaint_form_provider.dart';

class SubmitComplaintHelper {
  const SubmitComplaintHelper();

  Future<void> pickImage(
    ComplaintFormProvider provider,
    BuildContext context,
  ) async {
    try {
      await provider.pickImage();
    } catch (e) {
      if (!context.mounted) return;
      CustomSnackbar.showError(context, message: 'Failed to pick image: $e');
    }
  }

  Future<void> submitComplaint(
    ComplaintFormProvider provider,
    BuildContext context,
  ) async {
    // Set should validate to true before validation
    provider.setShouldValidate(true);

    // Validate form
    if (!provider.formKey.currentState!.validate()) {
      CustomSnackbar.showError(
        context,
        message: 'Please fix the errors in the form',
      );
      return;
    }

    if (!provider.validateForm()) {
      CustomSnackbar.showError(
        context,
        message: 'Please fill all required fields',
      );
      return;
    }

    provider.isSubmitting = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    provider.isSubmitting = false;

    // Show success message
    if (!context.mounted) return;
    CustomSnackbar.showSuccess(
      context,
      message: 'Complaint submitted successfully',
    );

    // Print complaint data (in real app, this would be sent to API)
    debugPrint('Complaint submitted:');
    debugPrint('Category: ${provider.selectedCategory}');
    debugPrint('Subject: ${provider.subjectController.text}');
    debugPrint('Description: ${provider.descriptionController.text}');
    debugPrint('Attached Image: ${provider.attachedImage?.path}');

    // Navigate back after successful submission
    Navigator.of(context).pop();
  }
}
