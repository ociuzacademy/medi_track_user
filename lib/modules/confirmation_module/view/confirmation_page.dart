// confirmation_page.dart
import 'package:flutter/material.dart';

import 'package:medi_track/modules/confirmation_module/widgets/confirmation_body.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Confirmation',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF101a22)
          : const Color(0xFFF9FAFB),
      body: const ConfirmationBody(),
    );
  }

  static Route route() =>
      MaterialPageRoute(builder: (_) => const ConfirmationPage());
}
