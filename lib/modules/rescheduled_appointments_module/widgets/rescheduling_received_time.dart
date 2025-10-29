// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';

class ReschedulingReceivedTime extends StatelessWidget {
  const ReschedulingReceivedTime({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final RescheduledAppointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        appointment.receivedTime,
        style: TextStyle(
          fontSize: 12,
          color: isDark ? const Color(0xFF6B7280) : const Color(0xFF617589),
        ),
      ),
    );
  }
}
