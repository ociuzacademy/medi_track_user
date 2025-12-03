// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/appointments_list.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/empty_appointments_state.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key, required this.appointments});

  final List<Appointment> appointments;

  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No upcoming appointments',
        description:
            'You can book a new appointment by tapping the button below.',
        showBookButton: true,
      );
    }

    return AppointmentsList(appointments: appointments);
  }
}
