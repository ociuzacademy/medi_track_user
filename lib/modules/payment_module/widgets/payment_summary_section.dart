// payment_summary_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_summaryrow.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';

class PaymentSummarySection extends StatelessWidget {
  const PaymentSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1a2c3a) : Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              PaymentSummaryrow(
                label: 'Appointment Details',
                value: paymentProvider.appointmentDetails,
                isDark: isDark,
                isBold: false,
              ),
              const SizedBox(height: 8),
              Container(
                height: 1,
                color: isDark
                    ? const Color(0xFF374151)
                    : const Color(0xFFf1f5f9),
              ),
              const SizedBox(height: 8),
              PaymentSummaryrow(
                label: 'Total Amount',
                value: '₹${paymentProvider.totalAmount.toStringAsFixed(2)}',
                isDark: isDark,
                isBold: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
