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

  void showAcceptRescheduleDialog() {
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
          TextButton(onPressed: _acceptReschedule, child: const Text('OK')),
        ],
      ),
    );
  }

  void showRejectRescheduleDialog() {
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
          TextButton(onPressed: _rejectReschedule, child: const Text('OK')),
        ],
      ),
    );
  }

  void _acceptReschedule() {
    final RescheduleTaskBloc rescheduleTaskBloc = context
        .read<RescheduleTaskBloc>();
    rescheduleTaskBloc.add(
      RescheduleTaskEvent.acceptingReschedule(appointmentId: appointmentId),
    );
  }

  void _rejectReschedule() {
    final RescheduleTaskBloc rescheduleTaskBloc = context
        .read<RescheduleTaskBloc>();
    rescheduleTaskBloc.add(
      RescheduleTaskEvent.rejectingReschedule(appointmentId: appointmentId),
    );
  }
}
