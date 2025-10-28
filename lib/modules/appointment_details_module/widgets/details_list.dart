// ignore_for_file: public_member_api_docs, sort_constructors_first
// details_list.dart
import 'package:flutter/material.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/cancelled_appointment_detail_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/refund_status_row.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          CancelledAppointmentDetailRow(label: 'Token Number', value: 'A-123'),
          CancelledAppointmentDetailRow(
            label: 'Original Date',
            value: 'Oct 25, 2024',
          ),
          CancelledAppointmentDetailRow(
            label: 'Original Time',
            value: '10:30 AM',
          ),
          CancelledAppointmentDetailRow(
            label: 'Reason for Cancellation',
            value: 'Doctor Unavailable',
          ),
          RefundStatusRow(context: context),
        ],
      ),
    );
  }
}
