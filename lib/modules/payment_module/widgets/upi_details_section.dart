// upi_details_section.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';
import 'package:medi_track/modules/payment_module/widgets/upi_input_field.dart';

class UpiDetailsSection extends StatelessWidget {
  const UpiDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        UpiInputField(
          controller: paymentProvider.upiIdController,
          isDark: isDark,
          autofocus: true,
        ),
        const SizedBox(height: 16),
        _buildInfoNote(isDark: isDark),
      ],
    );
  }

  Widget _buildInfoNote({required bool isDark}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.info_outline,
          size: 16,
          color: isDark ? const Color(0xFF9ca3af) : const Color(0xFF6b7280),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Ensure your UPI app is installed and active.',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: isDark ? const Color(0xFF9ca3af) : const Color(0xFF6b7280),
            ),
          ),
        ),
      ],
    );
  }
}
