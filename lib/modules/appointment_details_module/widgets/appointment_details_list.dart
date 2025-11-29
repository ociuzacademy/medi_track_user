// appointment_details_list.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/completed_appointment_detail_row.dart';

class AppointmentDetailsList extends StatelessWidget {
  const AppointmentDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Removed unused variables - they were declared but never used
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          // Department
          CompletedAppointmentDetailRow(
            label: 'Department',
            value: 'Cardiology',
            isFirst: true,
          ),

          // Appointment Token
          CompletedAppointmentDetailRow(
            label: 'Appointment Token',
            value: 'TKN-738920',
          ),

          // Date & Time
          CompletedAppointmentDetailRow(
            label: 'Date & Time',
            value: '24 Oct, 2024 | 10:30 AM',
          ),
        ],
      ),
    );
  }
}
