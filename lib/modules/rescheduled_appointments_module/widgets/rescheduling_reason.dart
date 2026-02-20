// widgets/appointment_card.dart

import 'package:flutter/material.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class ReschedulingReason extends StatelessWidget {
  const ReschedulingReason({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final Appointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final String reason = (appointment.cancellationReason ?? '').trim();
    if (reason.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF22313B) : const Color(0xFFF3F9FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, size: 16, color: Color(0xFF137FEC)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Reason: $reason',
              style: TextStyle(
                fontSize: 13,
                color: isDark
                    ? AppColors.textSecondaryDark
                    : AppColors.textSecondaryLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
