import 'package:flutter/material.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_booking_module/classes/appointment_data.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:provider/provider.dart';

class AppointmentBookingHelper {
  const AppointmentBookingHelper();

  void showUserProfile(BuildContext context) {
    final UserProfileCubit userProfileCubit = context.read<UserProfileCubit>();
    userProfileCubit.getUserProfile();
  }

  void showDepartments(BuildContext context) {
    final DepartmentsCubit departmentsCubit = context.read<DepartmentsCubit>();
    departmentsCubit.fetchDepartments();
  }

  // Confirm booking
  void confirmBooking(BuildContext context) {
    final appointmentBookingProvider = Provider.of<AppointmentBookingProvider>(
      context,
      listen: false,
    );
    FocusScope.of(context).unfocus();
    if (appointmentBookingProvider.isBookingValid) {
      // Show success dialog or navigate to confirmation page
      showDialog(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('Booking Confirmed'),
          content: Text(
            'Your appointment with ${appointmentBookingProvider.selectedDoctor!.name} has been confirmed.${appointmentBookingProvider.symptoms.isNotEmpty ? '\n\nSymptoms: ${appointmentBookingProvider.symptoms}' : ''}',
          ),
          actions: [
            TextButton(
              onPressed: () => _bookAppointment(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      CustomSnackbar.showError(
        context,
        message: 'Please fill all required fields',
      );
    }
  }

  void _bookAppointment(BuildContext context) {
    final appointmentBookingProvider = Provider.of<AppointmentBookingProvider>(
      context,
      listen: false,
    );

    final AppointmentData? appointmentData =
        appointmentBookingProvider.appointmentData;

    if (appointmentData != null) {
      final AppointmentBookingBloc appointmentBookingBloc = context
          .read<AppointmentBookingBloc>();
      appointmentBookingBloc.add(
        AppointmentBookingEvent.bookingAppointment(
          appointmentData: appointmentData,
        ),
      );
    }
  }
}
