// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/cancelled_appointments_list.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/empty_appointments_state.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key, required this.appointments});
  final List<Appointment> appointments;

  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No cancelled appointments',
        description: 'Your cancelled appointments will appear here.',
        showBookButton: false,
      );
    }

    return CancelledAppointmentsList(appointments: appointments);
  }
}
