// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class RescheduledAppointmentsHelper {
  final BuildContext context;

  const RescheduledAppointmentsHelper({required this.context});

  void appointmentListInit() {
    final AppointmentListCubit appointmentListCubit = context
        .read<AppointmentListCubit>();
    appointmentListCubit.getUserAppointments();
  }

  void showAcceptRescheduleDialog(int appointmentId) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Accept Reschedule'),
        content: const Text('Are you sure you want to accept this reschedule?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => _acceptReschedule(appointmentId),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void showRejectRescheduleDialog(int appointmentId) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Reject Reschedule'),
        content: const Text('Are you sure you want to reject this reschedule?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => _rejectReschedule(appointmentId),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _acceptReschedule(int appointmentId) {
    final RescheduleTaskBloc rescheduleTaskBloc = context
        .read<RescheduleTaskBloc>();
    rescheduleTaskBloc.add(
      RescheduleTaskEvent.acceptingReschedule(appointmentId: appointmentId),
    );
  }

  void _rejectReschedule(int appointmentId) {
    final RescheduleTaskBloc rescheduleTaskBloc = context
        .read<RescheduleTaskBloc>();
    rescheduleTaskBloc.add(
      RescheduleTaskEvent.rejectingReschedule(appointmentId: appointmentId),
    );
  }
}
