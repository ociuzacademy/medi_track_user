// register_provider.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/register_module/bloc/user_register_bloc.dart';
import 'package:medi_track/modules/register_module/classes/register_details.dart';
import 'package:provider/provider.dart';

class RegisterProvider with ChangeNotifier {
  // Form controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Form state
  String? _selectedGender;
  String? _selectedBloodGroup;
  DateTime? _selectedDate;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _agreeToTerms = false;
  File? _pickedImage;

  // Getters
  String? get selectedGender => _selectedGender;
  String? get selectedBloodGroup => _selectedBloodGroup;
  DateTime? get selectedDate => _selectedDate;
  bool get obscurePassword => _obscurePassword;
  bool get obscureConfirmPassword => _obscureConfirmPassword;
  bool get agreeToTerms => _agreeToTerms;
  File? get pickedImage => _pickedImage;

  // Setters
  void setSelectedGender(String? gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  void setSelectedBloodGroup(String? bloodGroup) {
    _selectedBloodGroup = bloodGroup;
    notifyListeners();
  }

  void setSelectedDate(DateTime? date) {
    _selectedDate = date;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _obscureConfirmPassword = !_obscureConfirmPassword;
    notifyListeners();
  }

  void setAgreeToTerms(bool value) {
    _agreeToTerms = value;
    notifyListeners();
  }

  // Image Picker Methods
  Future<void> pickImage(ImageSource source) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: source);

      if (image != null) {
        _pickedImage = File(image.path);
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
    }
  }

  void removeImage() {
    _pickedImage = null;
    notifyListeners();
  }

  // Validation methods
  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  // Registration method
  void register(BuildContext context) {
    final username = usernameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();
    final address = addressController.text.trim();
    final password = passwordController.text.trim();

    if (_agreeToTerms) {
      if (_selectedGender == null) {
        CustomSnackbar.showError(
          context,
          message: 'Please select your gender.',
        );
      }
      if (_selectedDate == null) {
        CustomSnackbar.showError(
          context,
          message: 'Please select your date of birth.',
        );
      }
      if (_selectedBloodGroup == null) {
        CustomSnackbar.showError(
          context,
          message: 'Please select your blood group.',
        );
      }
      if (_pickedImage == null) {
        CustomSnackbar.showError(
          context,
          message: 'Please select your profile image.',
        );
      }
      final RegisterDetails registerDetails = RegisterDetails(
        username: username,
        email: email,
        phone: phone,
        address: address,
        password: password,
        gender: _selectedGender!,
        bloodGroup: _selectedBloodGroup!,
        birthDate: _selectedDate!,
        image: _pickedImage!,
      );
      final UserRegisterBloc userRegisterBloc = context
          .read<UserRegisterBloc>();
      userRegisterBloc.add(UserRegisterEvent.userRegistering(registerDetails));
    } else if (!_agreeToTerms) {
      CustomSnackbar.showError(
        context,
        message: 'Please agree to the Terms of Service and Privacy Policy.',
      );
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
