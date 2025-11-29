// appointment_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:medi_track/modules/appointment_booking_module/utils/appointment_booking_helper.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/appointment_body.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/appointment_booking_module/cubit/available_doctors/available_doctors_cubit.dart';
import 'package:medi_track/modules/appointment_booking_module/cubit/expected_token/expected_token_cubit.dart';

class AppointmentBookingPage extends StatefulWidget {
  const AppointmentBookingPage({super.key});

  @override
  State<AppointmentBookingPage> createState() => _AppointmentBookingPageState();

  static Route route() =>
      MaterialPageRoute(builder: (_) => const AppointmentBookingPage());
}

class _AppointmentBookingPageState extends State<AppointmentBookingPage> {
  late final AppointmentBookingHelper _appointmentBookingHelper;

  @override
  void initState() {
    super.initState();
    _appointmentBookingHelper = AppointmentBookingHelper(context: context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _appointmentBookingHelper.showDepartments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppointmentBookingProvider(
        availableDoctorsCubit: context.read<AvailableDoctorsCubit>(),
        expectedTokenCubit: context.read<ExpectedTokenCubit>(),
      ),
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
