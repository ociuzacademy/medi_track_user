// appointment_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';
import 'package:medi_track/modules/appointment_module/widgets/appointment_body.dart';
import 'package:provider/provider.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();

  static Route route() =>
      MaterialPageRoute(builder: (_) => const AppointmentPage());
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppointmentProvider(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Book Appointment',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF101a22)
            : const Color(0xFFFFFFFF),
        body: const AppointmentBody(),
      ),
    );
  }
}
