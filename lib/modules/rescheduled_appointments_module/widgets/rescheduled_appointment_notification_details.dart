// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class RescheduledAppointmentNotificationDetails extends StatelessWidget {
  const RescheduledAppointmentNotificationDetails({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final RescheduledAppointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: isDark ? AppColors.borderDark : AppColors.borderLight,
            width: 2,
          ),
        ),
      ),
      child: Column(
        children: [
          // Original appointment
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 16,
                color: isDark
                    ? AppColors.textTertiaryDark
                    : AppColors.textTertiaryLight,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Original: ${appointment.originalDate} – Token ${appointment.originalToken}',
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark
                        ? AppColors.textTertiaryDark
                        : const Color(0xFF617589),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Rescheduled appointment
          Row(
            children: [
              const Icon(
                Icons.event_repeat,
                size: 16,
                color: Color(0xFF137FEC),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Rescheduled: ${appointment.rescheduledDate} – Token ${appointment.rescheduledToken}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : const Color(0xFF111418),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
