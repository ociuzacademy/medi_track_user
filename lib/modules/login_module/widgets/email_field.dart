import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/text_fields/custom_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.emailController,
    required this.colorScheme,
  });

  final TextEditingController emailController;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      colorScheme: colorScheme,
      labelText: 'Email',
      hintText: 'Email',
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }
}
