// confirmation_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/confirmation_module/utils/confirmation_helper.dart';

import 'package:medi_track/modules/confirmation_module/widgets/confirmation_body.dart';

class ConfirmationPage extends StatefulWidget {
  final int appointmentId;
  const ConfirmationPage({super.key, required this.appointmentId});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) => ConfirmationPage(appointmentId: appointmentId),
  );
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  late final ConfirmationHelper _confirmationHelper;
  @override
  void initState() {
    super.initState();
    _confirmationHelper = ConfirmationHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _confirmationHelper.appointmentDetailsInit();
    });
  }

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
}
