// payment_footer_section.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';

class PaymentFooterSection extends StatelessWidget {
  const PaymentFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF101f22) : Colors.white,
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF374151) : const Color(0xFFe5e7eb),
          ),
        ),
      ),
      child: Column(
        children: [
          // Secure Payment Note
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.verified_user_outlined,
                size: 16,
                color: isDark
                    ? const Color(0xFF9ca3af)
                    : const Color(0xFF618389),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  'Your payment is processed securely by our trusted partners.',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: isDark
                        ? const Color(0xFF9ca3af)
                        : const Color(0xFF618389),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Pay Button
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () => paymentProvider.processPayment(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF13c8ec),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              child: Text(
                'Pay ₹${paymentProvider.totalAmount.toStringAsFixed(2)} Now',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
