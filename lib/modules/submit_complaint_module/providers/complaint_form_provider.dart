// complaint_form_provider.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ComplaintFormProvider with ChangeNotifier {
  // Form controllers
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Form state
  String? _selectedCategory;
  File? _attachedImage;
  bool _isSubmitting = false;
  bool _shouldValidate = false;

  // Validation keys
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Getters
  TextEditingController get subjectController => _subjectController;
  TextEditingController get descriptionController => _descriptionController;
  String? get selectedCategory => _selectedCategory;
  File? get attachedImage => _attachedImage;
  bool get isSubmitting => _isSubmitting;
  GlobalKey<FormState> get formKey => _formKey;

  // Setters
  set selectedCategory(String? value) {
    _selectedCategory = value;
    notifyListeners();
  }

  set attachedImage(File? value) {
    _attachedImage = value;
    notifyListeners();
  }

  set isSubmitting(bool value) {
    _isSubmitting = value;
    notifyListeners();
  }

  // Validation methods
  String? validateSubject(String? value) {
    if (!_shouldValidate) return null;
    if (value == null || value.isEmpty) {
      return 'Please enter a subject for your complaint';
    }
    if (value.length < 5) {
      return 'Subject must be at least 5 characters long';
    }
    return null;
  }

  String? validateDescription(String? value) {
    if (!_shouldValidate) return null;
    if (value == null || value.isEmpty) {
      return 'Please describe your complaint in detail';
    }
    if (value.length < 20) {
      return 'Description must be at least 20 characters long';
    }
    return null;
  }

  String? validateCategory(String? value) {
    if (!_shouldValidate) return null; // Don't validate until form is submitted
    if (value == null || value.isEmpty) {
      return 'Please select a complaint category';
    }
    return null;
  }

  void setShouldValidate(bool shouldValidate) {
    _shouldValidate = shouldValidate;
    notifyListeners();
  }

  // Image handling
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
        attachedImage = File(pickedFile.path);
      }
    } catch (e) {
      rethrow;
    }
  }

  void removeImage() {
    attachedImage = null;
  }

  // Form reset
  void resetForm() {
    _subjectController.clear();
    _descriptionController.clear();
    _selectedCategory = null;
    _attachedImage = null;
    _isSubmitting = false;
    _shouldValidate = false; // Reset validation state
    notifyListeners();
  }

  // Form submission validation
  bool validateForm() {
    final isSubjectValid = validateSubject(_subjectController.text) == null;
    final isDescriptionValid =
        validateDescription(_descriptionController.text) == null;
    final isCategoryValid = validateCategory(_selectedCategory) == null;

    return isSubjectValid && isDescriptionValid && isCategoryValid;
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}
