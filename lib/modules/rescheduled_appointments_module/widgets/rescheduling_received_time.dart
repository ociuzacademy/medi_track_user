// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class ReschedulingReceivedTime extends StatelessWidget {
  const ReschedulingReceivedTime({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final Appointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    final String rescheduledDate = dateFormat.format(
      appointment.rescheduledDate ?? DateTime.now(),
    );
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        rescheduledDate,
        style: TextStyle(
          fontSize: 12,
          color: isDark ? AppColors.textTertiaryLight : const Color(0xFF617589),
        ),
      ),
    );
  }
}
