// payment_method_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/enums/payment_method.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_method_button.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Payment Method',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 48,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1a2c3a) : const Color(0xFFf1f5f9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: PaymentMethodButton(
                  label: 'Card',
                  isSelected:
                      paymentProvider.selectedPaymentMethod ==
                      PaymentMethod.card,
                  onTap: () =>
                      paymentProvider.setPaymentMethod(PaymentMethod.card),
                  isDark: isDark,
                ),
              ),
              Expanded(
                child: PaymentMethodButton(
                  label: 'UPI',
                  isSelected:
                      paymentProvider.selectedPaymentMethod ==
                      PaymentMethod.upi,
                  onTap: () =>
                      paymentProvider.setPaymentMethod(PaymentMethod.upi),
                  isDark: isDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
