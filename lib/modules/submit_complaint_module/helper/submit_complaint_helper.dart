import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/submit_complaint_module/data/complaint_data.dart';

class SubmitComplaintHelper {
  final BuildContext context;

  const SubmitComplaintHelper({required this.context});

  void submitComplaint(ComplaintData complaintData) {
    final SubmitComplaintBloc bloc = context.read<SubmitComplaintBloc>();
    bloc.add(
      SubmitComplaintEvent.submitComplaint(complaintData: complaintData),
    );
  }
}
