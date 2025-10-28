// completed_appointments_list.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointments_module/models/appointment.dart';
import 'package:medi_track/modules/appointments_module/widgets/completed_appointment_card.dart';

class CompletedAppointmentsList extends StatelessWidget {
  final List<Appointment> appointments;

  const CompletedAppointmentsList({super.key, required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CompletedAppointmentCard(appointment: appointments[index]),
        );
      },
    );
  }
}
