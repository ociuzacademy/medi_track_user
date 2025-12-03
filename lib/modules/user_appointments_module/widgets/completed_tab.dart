// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/completed_appointments_list.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/empty_appointments_state.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key, required this.appointments});
  final List<Appointment> appointments;
  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No completed appointments',
        description: 'Your completed appointments will appear here.',
        showBookButton: false,
      );
    }

    return CompletedAppointmentsList(appointments: appointments);
  }
}
