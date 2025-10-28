// payment_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_body.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();

  static Route route() =>
      MaterialPageRoute(builder: (_) => const PaymentPage());
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentProvider(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Complete Payment',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF101f22)
            : const Color(0xFFf6f8f8),
        body: const PaymentBody(),
      ),
    );
  }
}
