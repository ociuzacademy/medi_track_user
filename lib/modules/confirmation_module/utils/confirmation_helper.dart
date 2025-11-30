import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class ConfirmationHelper {
  final BuildContext context;
  final int appointmentId;
  ConfirmationHelper({required this.context, required this.appointmentId});

  void appointmentDetailsInit() {
    final AppointmentDetailsCubit appointmentDetailsCubit = context
        .read<AppointmentDetailsCubit>();
    appointmentDetailsCubit.getAppointmentDetails(appointmentId);
  }
}
