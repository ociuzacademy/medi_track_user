import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class FooterActionButtonsHelper {
  final BuildContext context;
  final int appointmentId;

  const FooterActionButtonsHelper({
    required this.context,
    required this.appointmentId,
  });

  void generateAppointmentPdf() {
    final AppointmentPdfBloc bloc = context.read<AppointmentPdfBloc>();
    bloc.add(AppointmentPdfEvent.generatingAppointmentPdf(appointmentId));
  }
}
