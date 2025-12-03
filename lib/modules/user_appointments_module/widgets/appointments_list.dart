// appointments_list.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/appointment_card.dart';

class AppointmentsList extends StatelessWidget {
  final List<Appointment> appointments;

  const AppointmentsList({super.key, required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: AppointmentCard(appointment: appointments[index]),
        );
      },
    );
  }
}
