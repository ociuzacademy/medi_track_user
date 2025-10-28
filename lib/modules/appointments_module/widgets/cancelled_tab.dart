// appointments_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointments_module/models/appointment.dart';
import 'package:medi_track/modules/appointments_module/utils/appointments_helper.dart';
import 'package:medi_track/modules/appointments_module/widgets/cancelled_appointments_list.dart';
import 'package:medi_track/modules/appointments_module/widgets/empty_appointments_state.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Appointment> cancelledAppointments = [
      Appointment(
        id: '4',
        doctorName: 'Dr. Sarah Johnson',
        specialty: 'Orthopedics',
        hospital: 'City General Hospital',
        date: 'October 20, 2023',
        tokenNumber: 'T-118',
        symptoms: '',
        icon: AppointmentsHelper.getIconForSpecialty('Orthopedics'),
        status: AppointmentStatus.cancelled,
      ),
    ];

    if (cancelledAppointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No cancelled appointments',
        description: 'Your cancelled appointments will appear here.',
        showBookButton: false,
      );
    }

    return CancelledAppointmentsList(appointments: cancelledAppointments);
  }
}
