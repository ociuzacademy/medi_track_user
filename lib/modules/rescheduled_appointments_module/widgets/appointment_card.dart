// widgets/appointment_card.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/reschedule_action_buttons.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/rescheduled_appointment_card_header.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/rescheduled_appointment_notification_details.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/rescheduling_reason.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/rescheduling_received_time.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class AppointmentCard extends StatelessWidget {
  final RescheduledAppointment appointment;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;
  final bool isRead;

  const AppointmentCard({
    super.key,
    required this.appointment,
    this.onAccept,
    this.onReject,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark.withAlpha(128) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.2)
                : Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Unread indicator
          if (!isRead)
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFF137FEC),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with doctor info and status
                RescheduledAppointmentCardHeader(
                  appointment: appointment,
                  isDark: isDark,
                  textTheme: textTheme,
                ),
                const SizedBox(height: 16),
                // Appointment details
                RescheduledAppointmentNotificationDetails(
                  appointment: appointment,
                  isDark: isDark,
                ),
                const SizedBox(height: 8),
                // Reason
                ReschedulingReason(appointment: appointment, isDark: isDark),
                const SizedBox(height: 8),
                // Received time
                ReschedulingReceivedTime(
                  appointment: appointment,
                  isDark: isDark,
                ),
                // Action buttons (only for pending status)
                if (appointment.status == AppointmentStatus.pending)
                  RescheduleActionButtons(
                    onReject: onReject,
                    onAccept: onAccept,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
