// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/enums/appointment_status.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class RescheduledAppointmentCardHeader extends StatelessWidget {
  const RescheduledAppointmentCardHeader({
    super.key,
    required this.appointment,
    required this.isDark,
    required this.textTheme,
  });

  final Appointment appointment;
  final bool isDark;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final String doctorName = appointment.doctorName.trim();
    final String departmentName = appointment.departmentName.trim();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: isDark
              ? AppColors.iconBackgroundDark
              : AppColors.iconBackgroundLight,
          child: Text(
            _doctorInitials(doctorName),
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorName.isEmpty ? 'Doctor info unavailable' : doctorName,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF111418),
                ),
              ),
              if (departmentName.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  departmentName,
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark
                        ? AppColors.textTertiaryDark
                        : const Color(0xFF617589),
                  ),
                ),
              ],
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: _statusBackground(appointment.status, isDark),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            _statusLabel(appointment.status),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: _statusColor(appointment.status),
            ),
          ),
        ),
      ],
    );
  }

  String _doctorInitials(String doctorName) {
    if (doctorName.isEmpty) return 'DR';
    final parts = doctorName
        .split(' ')
        .where((part) => part.trim().isNotEmpty)
        .toList();
    if (parts.isEmpty) return 'DR';
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return (parts[0][0] + parts[1][0]).toUpperCase();
  }

  String _statusLabel(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.upcoming:
        return 'Upcoming';
      case AppointmentStatus.completed:
        return 'Completed';
      case AppointmentStatus.cancelled:
        return 'Cancelled';
      case AppointmentStatus.rescheduled:
        return 'Rescheduled';
    }
  }

  Color _statusColor(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.upcoming:
        return AppColors.info;
      case AppointmentStatus.completed:
        return AppColors.success;
      case AppointmentStatus.cancelled:
        return AppColors.error;
      case AppointmentStatus.rescheduled:
        return AppColors.warning;
    }
  }

  Color _statusBackground(AppointmentStatus status, bool isDark) {
    switch (status) {
      case AppointmentStatus.upcoming:
        return isDark ? const Color(0xFF1B3147) : const Color(0xFFE8F3FF);
      case AppointmentStatus.completed:
        return isDark ? const Color(0xFF1D3329) : const Color(0xFFEAF9EE);
      case AppointmentStatus.cancelled:
        return isDark ? const Color(0xFF412222) : const Color(0xFFFDECEC);
      case AppointmentStatus.rescheduled:
        return isDark ? const Color(0xFF3A3320) : const Color(0xFFFFF7E0);
    }
  }
}
