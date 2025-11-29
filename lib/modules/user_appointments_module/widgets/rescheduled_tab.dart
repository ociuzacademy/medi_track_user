// rescheduled_tab.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/rescheduled_appointment_card.dart';

class RescheduledTab extends StatelessWidget {
  const RescheduledTab({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = Theme.of(context).brightness == Brightness.dark;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        RescheduledAppointmentCard(
          doctorName: 'Dr. Emily Carter',
          department: 'Cardiology',
          hospital: 'City General Hospital',
          tokenNumber: 'T-123',
          originalDateTime: 'October 26, 2023, 10:30 AM',
          newDateTime: 'October 30, 2023, 11:00 AM',
          icon: Icons.medical_services,
        ),
        const SizedBox(height: 16),
        RescheduledAppointmentCard(
          doctorName: 'Dr. Ben Miller',
          department: 'Dermatology',
          hospital: 'City General Hospital',
          tokenNumber: 'T-124',
          originalDateTime: 'October 28, 2023, 11:00 AM',
          newDateTime: 'November 2, 2023, 09:30 AM',
          icon: Icons.face,
        ),
      ],
    );
  }
}
