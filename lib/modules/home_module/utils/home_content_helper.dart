import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class HomeContentHelper {
  final BuildContext context;

  HomeContentHelper({required this.context});

  void upcomingAppointmentsInit() {
    final UpcomingAppointmentsCubit cubit = context
        .read<UpcomingAppointmentsCubit>();
    cubit.getUpcomingAppointments();
  }
}
