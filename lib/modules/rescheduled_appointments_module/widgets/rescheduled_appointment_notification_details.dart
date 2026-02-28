// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class RescheduledAppointmentNotificationDetails extends StatelessWidget {
  const RescheduledAppointmentNotificationDetails({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final Appointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final String originalDate = DateFormat(
      'dd MMM yyyy, hh:mm a',
    ).format(appointment.date);
    final String originalToken = appointment.tokenNumber > 0
        ? 'Token ${appointment.tokenNumber}'
        : '';

    final String? rescheduledDate = appointment.rescheduledDate == null
        ? null
        : DateFormat(
            'dd MMM yyyy, hh:mm a',
          ).format(appointment.rescheduledDate!.toLocal());
    final String rescheduledToken = appointment.tokenNumber > 0
        ? 'Token ${appointment.tokenNumber}'
        : '';

    final bool hasOriginalData =
        originalDate.isNotEmpty || originalToken.isNotEmpty;
    final bool hasRescheduledData =
        (rescheduledDate?.isNotEmpty ?? false) || rescheduledToken.isNotEmpty;

    if (!hasOriginalData && !hasRescheduledData) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.only(left: 14),
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
          if (hasOriginalData)
            _DetailRow(
              icon: Icons.calendar_today_outlined,
              iconColor: isDark
                  ? AppColors.textTertiaryDark
                  : AppColors.textTertiaryLight,
              label: 'Original appointment',
              value: [
                originalDate,
                originalToken,
              ].where((value) => value.isNotEmpty).join('  •  '),
              isDark: isDark,
            ),
          if (hasOriginalData && hasRescheduledData) const SizedBox(height: 10),
          if (hasRescheduledData)
            _DetailRow(
              icon: Icons.event_repeat,
              iconColor: const Color(0xFF137FEC),
              label: 'Rescheduled to',
              value: [
                ?rescheduledDate,
                rescheduledToken,
              ].where((value) => value.isNotEmpty).join('  •  '),
              isDark: isDark,
              emphasize: true,
            ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
    required this.isDark,
    this.emphasize = false,
  });

  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;
  final bool isDark;
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: isDark
                      ? AppColors.textTertiaryDark
                      : AppColors.textTertiaryLight,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: emphasize ? FontWeight.w600 : FontWeight.w500,
                  color: emphasize
                      ? (isDark ? Colors.white : AppColors.textPrimaryLight)
                      : (isDark
                            ? AppColors.textTertiaryDark
                            : const Color(0xFF617589)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
