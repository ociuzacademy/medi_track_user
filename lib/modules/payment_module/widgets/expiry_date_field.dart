// expiry_date_field.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base_input_field.dart';

class ExpiryDateField extends StatelessWidget {
  final TextEditingController controller;
  final bool isDark;
  final bool autofocus;

  const ExpiryDateField({
    super.key,
    required this.controller,
    required this.isDark,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseInputField(
      label: 'Expiry Date',
      hintText: 'MM/YY',
      suffixIcon: Icons.calendar_today_outlined,
      controller: controller,
      isDark: isDark,
      keyboardType: TextInputType.datetime,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
        _ExpiryDateInputFormatter(),
      ],
      autofocus: autofocus,
    );
  }
}

// Improved Input Formatter to add `/` automatically
class _ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // If the new value is empty, return as is
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // If backspace is pressed, handle deletion properly
    if (newValue.text.length < oldValue.text.length) {
      // If deleting the slash, delete the character before it too
      if (oldValue.text.endsWith('/') && newValue.text.length == 2) {
        return TextEditingValue(
          text: newValue.text.substring(0, 1),
          selection: TextSelection.collapsed(offset: 1),
        );
      }
      return newValue;
    }

    // Remove all non-digits
    String text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.length > 4) {
      text = text.substring(0, 4); // Limit to MMYY format
    }

    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i == 2) {
        buffer.write('/'); // Add `/` after the second digit
      }
      buffer.write(text[i]);
    }

    final formattedText = buffer.toString();
    final newSelection = TextSelection.collapsed(offset: formattedText.length);

    return TextEditingValue(text: formattedText, selection: newSelection);
  }
}
