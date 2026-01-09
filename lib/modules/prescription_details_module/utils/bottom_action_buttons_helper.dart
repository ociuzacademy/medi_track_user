import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';

class BottomActionButtonsHelper {
  final BuildContext context;
  final PrescriptionDetailsModel prescriptionData;

  const BottomActionButtonsHelper({
    required this.context,
    required this.prescriptionData,
  });

  void generatePdf() {
    final SendPrescriptionBloc bloc = context.read<SendPrescriptionBloc>();
    bloc.add(SendPrescriptionEvent.generatingPrescription(prescriptionData));
  }
}
