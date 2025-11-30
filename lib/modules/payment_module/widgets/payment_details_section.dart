// payment_details_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/enums/payment_method.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';
import 'package:medi_track/modules/payment_module/widgets/card_details_section.dart';
import 'package:medi_track/modules/payment_module/widgets/upi_details_section.dart';

class PaymentDetailsSection extends StatelessWidget {
  const PaymentDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentProvider = Provider.of<PaymentProvider>(context);

    return Column(
      children: [
        if (paymentProvider.selectedPaymentMethod == PaymentMethod.card) ...[
          const CardDetailsSection(),
        ] else if (paymentProvider.selectedPaymentMethod ==
            PaymentMethod.upi) ...[
          const UpiDetailsSection(),
        ],
      ],
    );
  }
}
