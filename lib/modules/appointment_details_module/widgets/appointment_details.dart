// appointment_details.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/payment_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/rescheduled_appointment_detail_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_row.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          RescheduledAppointmentDetailRow(
            label: 'Old Appointment',
            value: '15 Oct 2023, 10:00 AM',
            isStrikethrough: true,
            isFirst: true,
          ),
          RescheduledAppointmentDetailRow(
            label: 'New Appointment',
            value: '16 Oct 2023, 11:30 AM',
            isHighlighted: true,
          ),
          RescheduledAppointmentDetailRow(
            label: 'Appointment Token',
            value: 'APT-785K2G',
          ),
          StatusRow(context: context),
          RescheduledAppointmentDetailRow(
            label: 'Symptoms Provided',
            value: 'Chest pain and shortness of breath.',
          ),
          PaymentRow(context: context),
        ],
      ),
    );
  }
}
