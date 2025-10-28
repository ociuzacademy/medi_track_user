import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointments_module/models/appointment.dart';

class CancelledAppointmentCardHelper {
  static void handleRebook(BuildContext context, Appointment appointment) {
    // Handle rebooking logic
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rebook Appointment'),
        content: Text(
          'Would you like to rebook with ${appointment.doctorName}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigate to booking page with pre-filled doctor
              CustomSnackbar.showSuccess(
                context,
                message: 'Redirecting to book with ${appointment.doctorName}',
              );
            },
            child: const Text('Rebook'),
          ),
        ],
      ),
    );
  }
}
