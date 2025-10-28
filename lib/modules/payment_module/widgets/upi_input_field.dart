// upi_input_field.dart
import 'package:flutter/material.dart';
import 'base_input_field.dart';

class UpiInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isDark;
  final bool autofocus;

  const UpiInputField({
    super.key,
    required this.controller,
    required this.isDark,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseInputField(
      label: 'UPI ID',
      hintText: 'Enter UPI ID (e.g. username@bank)',
      prefixIcon: Icons.payments_outlined,
      controller: controller,
      isDark: isDark,
      keyboardType: TextInputType.emailAddress,
      autofocus: autofocus,
    );
  }
}
