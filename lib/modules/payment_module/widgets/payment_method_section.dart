// payment_method_section.dart
import 'package:flutter/material.dart';
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
                child: _PaymentMethodButton(
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
                child: _PaymentMethodButton(
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

class _PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isDark;

  const _PaymentMethodButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF13c8ec) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? Colors.white
                  : (isDark
                        ? const Color(0xFF9ca3af)
                        : const Color(0xFF618389)),
            ),
          ),
        ),
      ),
    );
  }
}
