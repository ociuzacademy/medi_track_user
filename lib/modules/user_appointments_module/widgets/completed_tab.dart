// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointment.dart';
import 'package:medi_track/modules/user_appointments_module/utils/user_appointments_helper.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/completed_appointments_list.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/empty_appointments_state.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Appointment> completedAppointments = [
      Appointment(
        id: '3',
        doctorName: 'Dr. Emily Carter',
        specialty: 'Cardiology',
        hospital: 'City General Hospital',
        date: 'October 20, 2023',
        tokenNumber: 'T-120',
        symptoms: '',
        icon: UserAppointmentsHelper.getIconForSpecialty('Cardiology'),
        status: AppointmentStatus.completed,
      ),
    ];

    if (completedAppointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No completed appointments',
        description: 'Your completed appointments will appear here.',
        showBookButton: false,
      );
    }

    return CompletedAppointmentsList(appointments: completedAppointments);
  }
}
