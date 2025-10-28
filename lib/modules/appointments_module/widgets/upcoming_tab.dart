// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointments_module/models/appointment.dart';
import 'package:medi_track/modules/appointments_module/utils/appointments_helper.dart';
import 'package:medi_track/modules/appointments_module/widgets/appointments_list.dart';
import 'package:medi_track/modules/appointments_module/widgets/empty_appointments_state.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Appointment> upcomingAppointments = [
      Appointment(
        id: '1',
        doctorName: 'Dr. Emily Carter',
        specialty: 'Cardiology',
        hospital: 'City General Hospital',
        date: 'October 26, 2023, 10:30 AM',
        tokenNumber: 'T-123',
        symptoms: 'Chest pain, shortness of breath',
        icon: AppointmentsHelper.getIconForSpecialty('Cardiology'),
        status: AppointmentStatus.upcoming,
      ),
      Appointment(
        id: '2',
        doctorName: 'Dr. Ben Miller',
        specialty: 'Dermatology',
        hospital: 'City General Hospital',
        date: 'October 28, 2023, 11:00 AM',
        tokenNumber: 'T-124',
        symptoms: 'Skin rash and itching',
        icon: AppointmentsHelper.getIconForSpecialty('Dermatology'),
        status: AppointmentStatus.upcoming,
      ),
    ];

    if (upcomingAppointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No upcoming appointments',
        description:
            'You can book a new appointment by tapping the button below.',
        showBookButton: true,
      );
    }

    return AppointmentsList(appointments: upcomingAppointments);
  }
}
