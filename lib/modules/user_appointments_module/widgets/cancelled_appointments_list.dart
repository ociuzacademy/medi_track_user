// cancelled_appointments_list.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointment.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/cancelled_appointment_card.dart';

class CancelledAppointmentsList extends StatelessWidget {
  final List<Appointment> appointments;

  const CancelledAppointmentsList({super.key, required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CancelledAppointmentCard(appointment: appointments[index]),
        );
      },
    );
  }
}
