// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/enums/appointment_status.dart';

import 'package:medi_track/modules/confirmation_module/widgets/appointment_detail_row.dart';

class AppointmentDetailsColumn extends StatelessWidget {
  final bool isDark;
  final DateTime date;
  final AppointmentStatus status;
  const AppointmentDetailsColumn({
    super.key,
    required this.isDark,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd MMM, yyyy');
    return Column(
      children: [
        AppointmentDetailRow(
          label: 'Date',
          value: formatter.format(date),
          isDark: isDark,
        ),
        const SizedBox(height: 12),
        AppointmentDetailRow(
          label: 'Status',
          value: status.toString(),
          isDark: isDark,
          isStatus: true,
        ),
      ],
    );
  }
}
