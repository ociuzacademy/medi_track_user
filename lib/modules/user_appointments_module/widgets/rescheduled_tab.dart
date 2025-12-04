// rescheduled_tab.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/utils/user_appointments_helper.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/empty_appointments_state.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/rescheduled_appointment_card.dart';

class RescheduledTab extends StatelessWidget {
  const RescheduledTab({super.key, required this.appointments});
  final List<Appointment> appointments;

  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      return const EmptyAppointmentsState(
        title: 'No rescheduled appointments',
        description: 'Your rescheduled appointments will appear here.',
      );
    }

    final DateFormat dateFormat = DateFormat('dd MMM yyyy, hh:mm a');

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        final appointment = appointments[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: RescheduledAppointmentCard(
            appointmentId: appointment.id,
            doctorName: appointment.doctorName,
            department: appointment.departmentName,
            tokenNumber: appointment.tokenNumber.toString(),
            originalDateTime: dateFormat.format(appointment.date),
            newDateTime: appointment.rescheduledDate != null
                ? dateFormat.format(appointment.rescheduledDate!)
                : 'N/A',
            icon: UserAppointmentsHelper.getIconForSpecialty(
              appointment.departmentName,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
