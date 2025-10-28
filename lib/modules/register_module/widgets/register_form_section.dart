// register_form_section.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/register_module/providers/register_provider.dart';
import 'package:medi_track/modules/register_module/widgets/date_of_birth_field.dart';
import 'package:medi_track/modules/register_module/widgets/gender_dropdown.dart';
import 'package:medi_track/modules/register_module/widgets/input_field.dart';
import 'package:medi_track/modules/register_module/widgets/password_field.dart';
import 'package:medi_track/modules/register_module/widgets/blood_group_dropdown.dart';

class RegisterFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const RegisterFormSection({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    final theme = Theme.of(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          // Username Field
          InputField(
            label: 'Username',
            controller: registerProvider.usernameController,
            icon: Icons.person_outlined,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // Email Field
          InputField(
            label: 'Email',
            controller: registerProvider.emailController,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // Phone Number Field
          InputField(
            label: 'Phone Number',
            controller: registerProvider.phoneController,
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // Address Field
          InputField(
            label: 'Address',
            controller: registerProvider.addressController,
            icon: Icons.home_outlined,
            maxLines: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your address';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // Gender and Blood Group Row
          Row(
            children: [
              Expanded(
                child: GenderDropdown(
                  theme: theme,
                  gender: registerProvider.selectedGender,
                  onSelectingGender: (newValue) {
                    registerProvider.setSelectedGender(newValue);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: BloodGroupDropdown(
                  theme: theme,
                  bloodGroup: registerProvider.selectedBloodGroup,
                  onSelectingBloodGroup: (newValue) {
                    registerProvider.setSelectedBloodGroup(newValue);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Date of Birth Field
          DateOfBirthField(
            theme: theme,
            birthDate: registerProvider.selectedDate,
            onSelectingBirthdate: () => _selectDate(context),
          ),
          const SizedBox(height: 16),

          // Password Field
          PasswordField(
            context: context,
            label: 'Password',
            controller: registerProvider.passwordController,
            obscureText: registerProvider.obscurePassword,
            onToggleVisibility: () {
              registerProvider.togglePasswordVisibility();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // Confirm Password Field
          PasswordField(
            context: context,
            label: 'Confirm Password',
            controller: registerProvider.confirmPasswordController,
            obscureText: registerProvider.obscureConfirmPassword,
            onToggleVisibility: () {
              registerProvider.toggleConfirmPasswordVisibility();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value != registerProvider.passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final registerProvider = Provider.of<RegisterProvider>(
      context,
      listen: false,
    );

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      registerProvider.setSelectedDate(picked);
    }
  }
}
