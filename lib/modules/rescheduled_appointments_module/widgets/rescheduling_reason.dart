// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';

class ReschedulingReason extends StatelessWidget {
  const ReschedulingReason({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final RescheduledAppointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Reason: ${appointment.reason}',
      style: TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.italic,
        color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF617589),
      ),
    );
  }
}
