import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class PrescriptionDetailsHelper {
  final BuildContext context;
  final int prescriptionId;

  const PrescriptionDetailsHelper({
    required this.context,
    required this.prescriptionId,
  });

  void prescriptionDetailsInitializer() {
    final PrescriptionDetailsCubit cubit = context
        .read<PrescriptionDetailsCubit>();
    cubit.getPrescriptionDetails(prescriptionId: prescriptionId);
  }
}
