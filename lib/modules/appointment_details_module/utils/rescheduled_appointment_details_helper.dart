import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class RescheduledAppointmentDetailsHelper {
  final BuildContext context;
  final int appointmentId;

  const RescheduledAppointmentDetailsHelper({
    required this.context,
    required this.appointmentId,
  });

  void rescheduledAppointmentDetails() {
    final AppointmentDetailsCubit appointmentDetailsCubit = context
        .read<AppointmentDetailsCubit>();
    appointmentDetailsCubit.getAppointmentDetails(appointmentId);
  }
}
