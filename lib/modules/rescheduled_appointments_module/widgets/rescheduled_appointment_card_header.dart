// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class RescheduledAppointmentCardHeader extends StatelessWidget {
  const RescheduledAppointmentCardHeader({
    super.key,
    required this.appointment,
    required this.isDark,
    required this.textTheme,
  });

  final RescheduledAppointment appointment;
  final bool isDark;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Doctor avatar
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: NetworkImage(appointment.doctorImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Doctor info
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appointment.doctorName,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF111418),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                appointment.specialty,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? AppColors.textTertiaryDark
                      : const Color(0xFF617589),
                ),
              ),
            ],
          ),
        ),
        // Status badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: isDark
                ? appointment.status.darkBackgroundColor
                : appointment.status.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            appointment.status.displayName,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: appointment.status.color,
            ),
          ),
        ),
      ],
    );
  }
}
