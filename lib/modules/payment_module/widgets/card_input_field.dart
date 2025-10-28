// card_input_field.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base_input_field.dart';

class CardInputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  final bool isDark;
  final TextInputType keyboardType;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final bool autofocus;

  const CardInputField({
    super.key,
    required this.label,
    required this.icon,
    required this.hintText,
    required this.controller,
    required this.isDark,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseInputField(
      label: label,
      hintText: hintText,
      suffixIcon: icon,
      controller: controller,
      isDark: isDark,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      autofocus: autofocus,
    );
  }
}
