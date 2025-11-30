// card_details_section.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';
import 'package:medi_track/modules/payment_module/widgets/expiry_date_field.dart';
import 'package:medi_track/modules/payment_module/widgets/card_input_field.dart';

class CardDetailsSection extends StatelessWidget {
  const CardDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        CardInputField(
          label: 'Cardholder Name',
          icon: Icons.person_outline,
          hintText: 'Cardholder Name',
          controller: paymentProvider.cardHolderNameController,
          isDark: isDark,
          autofocus: true,
          inputFormatters: [
            TextInputFormatter.withFunction((_, newValue) {
              return newValue.copyWith(text: newValue.text.toUpperCase());
            }),
          ],
        ),
        const SizedBox(height: 16),
        CardInputField(
          label: 'Card Number',
          icon: Icons.credit_card_outlined,
          hintText: 'Card Number',
          controller: paymentProvider.cardNumberController,
          isDark: isDark,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(16),
            _CardNumberInputFormatter(),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ExpiryDateField(
                controller: paymentProvider.expiryDateController,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardInputField(
                label: 'CVV',
                icon: Icons.lock_outline,
                hintText: 'CVV',
                controller: paymentProvider.cvvController,
                isDark: isDark,
                keyboardType: TextInputType.number,
                obscureText: true,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Card number formatter for better UX
class _CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    String text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.length > 16) {
      text = text.substring(0, 16);
    }

    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        buffer.write(' ');
      }
      buffer.write(text[i]);
    }

    final formattedText = buffer.toString();
    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
