// appointment_details.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/payment_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/rescheduled_appointment_detail_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_row.dart';

class AppointmentDetails extends StatelessWidget {
  final DateTime oldAppointmentDate;
  final DateTime newAppointmentDate;
  final int appointmentToken;
  final String symptoms;
  const AppointmentDetails({
    super.key,
    required this.oldAppointmentDate,
    required this.newAppointmentDate,
    required this.appointmentToken,
    required this.symptoms,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

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
            value: dateFormat.format(oldAppointmentDate),
            isStrikethrough: true,
            isFirst: true,
          ),
          RescheduledAppointmentDetailRow(
            label: 'New Appointment',
            value: dateFormat.format(newAppointmentDate),
            isHighlighted: true,
          ),
          RescheduledAppointmentDetailRow(
            label: 'Appointment Token',
            value: 'APT-$appointmentToken',
          ),
          StatusRow(context: context),
          RescheduledAppointmentDetailRow(
            label: 'Symptoms Provided',
            value: symptoms,
          ),
          PaymentRow(context: context),
        ],
      ),
    );
  }
}
