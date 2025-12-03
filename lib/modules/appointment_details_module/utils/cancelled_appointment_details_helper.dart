import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/cubit/appointment_details/appointment_details_cubit.dart';

class CancelledAppointmentDetailsHelper {
  final BuildContext context;
  final int appointmentId;

  const CancelledAppointmentDetailsHelper({
    required this.context,
    required this.appointmentId,
  });

  void cancelledAppintmentDetailsInit() {
    final AppointmentDetailsCubit appointmentDetailsCubit = context.read();
    appointmentDetailsCubit.getAppointmentDetails(appointmentId);
  }
}
