// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';

class SubmitComplaintHelper {
  final BuildContext context;
  final TextEditingController subjectController;
  final TextEditingController descriptionController;

  // ValueNotifiers for state management
  final ValueNotifier<String?> selectedCategory;
  final ValueNotifier<File?> attachedImage;
  final ValueNotifier<bool> isSubmitting;
  const SubmitComplaintHelper({
    required this.context,
    required this.subjectController,
    required this.descriptionController,
    required this.selectedCategory,
    required this.attachedImage,
    required this.isSubmitting,
  });

  Future<void> pickImage() async {
    try {
      final ImagePicker imagePicker = ImagePicker();
      final XFile? pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1200,
        maxHeight: 1200,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        attachedImage.value = File(pickedFile.path);
      }
    } catch (e) {
      if (!context.mounted) return;
      CustomSnackbar.showError(context, message: 'Failed to pick image: $e');
    }
  }

  void removeImage() {
    attachedImage.value = null;
  }

  void resetForm() {
    selectedCategory.value = null;
    subjectController.clear();
    descriptionController.clear();
    attachedImage.value = null;
  }

  Future<void> submitComplaint() async {
    if (subjectController.text.isEmpty) {
      CustomSnackbar.showError(
        context,
        message: 'Please enter a subject for your complaint',
      );
      return;
    }

    if (descriptionController.text.isEmpty) {
      CustomSnackbar.showError(
        context,
        message: 'Please describe your complaint',
      );
      return;
    }

    isSubmitting.value = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    isSubmitting.value = false;

    // Show success message
    if (!context.mounted) return;
    CustomSnackbar.showSuccess(
      context,
      message: 'Complaint submitted successfully',
    );

    // Print complaint data (in real app, this would be sent to API)
    debugPrint('Complaint submitted:');
    debugPrint('Category: ${selectedCategory.value}');
    debugPrint('Subject: ${subjectController.text}');
    debugPrint('Description: ${descriptionController.text}');
    debugPrint('Attached Image: ${attachedImage.value?.path}');

    // Navigate back after successful submission
    Navigator.of(context).pop();
  }
}
