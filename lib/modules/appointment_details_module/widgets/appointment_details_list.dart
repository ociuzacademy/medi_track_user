// appointment_details_list.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/completed_appointment_detail_row.dart';
import 'package:intl/intl.dart';

class AppointmentDetailsList extends StatelessWidget {
  final String department;
  final String appointmentToken;
  final DateTime dateTime;
  const AppointmentDetailsList({
    super.key,
    required this.department,
    required this.appointmentToken,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('dd MMM, yyyy');

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // Department
          CompletedAppointmentDetailRow(
            label: 'Department',
            value: department,
            isFirst: true,
          ),

          // Appointment Token
          CompletedAppointmentDetailRow(
            label: 'Appointment Token',
            value: appointmentToken,
          ),

          // Date & Time
          CompletedAppointmentDetailRow(
            label: 'Date',
            value: dateFormat.format(dateTime),
          ),
        ],
      ),
    );
  }
}
