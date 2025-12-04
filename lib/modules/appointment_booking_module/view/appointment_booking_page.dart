// appointment_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:medi_track/modules/appointment_booking_module/utils/appointment_booking_helper.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/appointment_body.dart';
import 'package:medi_track/modules/payment_module/view/payment_page.dart';
import 'package:provider/provider.dart';

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
    _appointmentBookingHelper = const AppointmentBookingHelper();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Reset cubits to initial state to clear any stale data
      context.read<AvailableDoctorsCubit>().reset();
      context.read<ExpectedTokenCubit>().reset();

      _appointmentBookingHelper.showDepartments(context);
      _appointmentBookingHelper.showUserProfile(context);
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
        body: BlocListener<AppointmentBookingBloc, AppointmentBookingState>(
          listener: (context, state) {
            switch (state) {
              case AppointmentBookingLoading():
                OverlayLoader.show(context, message: 'Booking Appointment...');
                break;
              case AppointmentBookingSuccess(response: final response):
                OverlayLoader.hide();
                CustomSnackbar.showSuccess(context, message: response.message);
                Navigator.pushReplacement(
                  context,
                  PaymentPage.route(appointmentId: response.appointment.id),
                );
                break;
              case AppointmentBookingError(message: final message):
                OverlayLoader.hide();
                CustomSnackbar.showError(context, message: message);
                break;
              default:
                OverlayLoader.hide();
                break;
            }
          },
          child: Builder(
            builder: (context) {
              return AppointmentBody(
                onConfirm: () {
                  _appointmentBookingHelper.confirmBooking(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
