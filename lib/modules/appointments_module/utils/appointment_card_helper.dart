import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';

class AppointmentCardHelper {
  static void showCancelConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Appointment'),
        content: const Text(
          'Are you sure you want to cancel this appointment?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Handle cancellation logic here
              CustomSnackbar.showSuccess(
                context,
                message: 'Appointment cancelled successfully',
              );
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
