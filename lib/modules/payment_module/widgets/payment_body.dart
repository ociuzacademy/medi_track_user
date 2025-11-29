// payment_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_details_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_footer_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_method_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_summary_section.dart';
import 'package:provider/provider.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentProvider>(
      builder: (context, paymentProvider, child) {
        return const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Payment Summary
                    PaymentSummarySection(),

                    SizedBox(height: 24),

                    // Payment Method
                    PaymentMethodSection(),

                    SizedBox(height: 24),

                    // Payment Details (Card or UPI)
                    PaymentDetailsSection(),
                  ],
                ),
              ),
            ),

            // Footer with Secure Note and Pay Button
            PaymentFooterSection(),
          ],
        );
      },
    );
  }
}
