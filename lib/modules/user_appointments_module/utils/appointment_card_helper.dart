import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/cancellation_bottom_sheet.dart';

class AppointmentCardHelper {
  static void showCancelConfirmation(BuildContext context, int appointmentId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => CancellationBottomSheet(
        appointmentId: appointmentId,
        isAppointmentDetails: false,
        isDirectlyFromHome: false,
      ),
    );
  }
}
