// ignore_for_file: public_member_api_docs, sort_constructors_first
// details_list.dart
import 'package:flutter/material.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/cancelled_appointment_detail_row.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/refund_status_row.dart';

class DetailsList extends StatelessWidget {
  final int tokenNumber;
  final String originalDate;
  final String reasonForCancellation;
  const DetailsList({
    super.key,
    required this.tokenNumber,
    required this.originalDate,
    required this.reasonForCancellation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          CancelledAppointmentDetailRow(
            label: 'Token Number',
            value: tokenNumber.toString(),
          ),
          CancelledAppointmentDetailRow(
            label: 'Original Date',
            value: originalDate,
          ),
          CancelledAppointmentDetailRow(
            label: 'Reason for Cancellation',
            value: reasonForCancellation,
          ),
          RefundStatusRow(context: context),
        ],
      ),
    );
  }
}
