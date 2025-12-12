import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/cubit/appointment_details/appointment_details_cubit.dart';
import 'package:medi_track/core/widgets/cancellation_bottom_sheet.dart';

class UpcomingAppointmentDetailsHelper {
  final BuildContext context;
  final int appointmentId;
  final bool isDirectlyFromHome;

  const UpcomingAppointmentDetailsHelper({
    required this.context,
    required this.appointmentId,
    required this.isDirectlyFromHome,
  });

  void upcomingAppintmentDetailsInit() {
    final AppointmentDetailsCubit appointmentDetailsCubit = context.read();
    appointmentDetailsCubit.getAppointmentDetails(appointmentId);
  }

  void showCancelConfirmation() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => CancellationBottomSheet(
        appointmentId: appointmentId,
        isAppointmentDetails: true,
        isDirectlyFromHome: isDirectlyFromHome,
      ),
    );
  }
}
