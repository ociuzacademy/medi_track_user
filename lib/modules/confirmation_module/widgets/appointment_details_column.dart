// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:medi_track/modules/confirmation_module/widgets/appointment_detail_row.dart';

class AppointmentDetailsColumn extends StatelessWidget {
  final bool isDark;
  const AppointmentDetailsColumn({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppointmentDetailRow(
          label: 'Date & Time',
          value: '25th December, 2023 at 11:00 AM',
          isDark: isDark,
        ),
        const SizedBox(height: 12),
        AppointmentDetailRow(
          label: 'Status',
          value: 'Confirmed',
          isDark: isDark,
          isStatus: true,
        ),
      ],
    );
  }
}
