import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/text_fields/custom_text_form_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
    required this.colorScheme,
  });

  final TextEditingController passwordController;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      colorScheme: colorScheme,
      labelText: 'Password',
      hintText: 'Password',
      isPassword: true,
      autofillHints: const [AutofillHints.password],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 3) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
