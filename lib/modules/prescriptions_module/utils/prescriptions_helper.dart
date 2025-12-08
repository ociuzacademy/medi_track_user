import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class PrescriptionsHelper {
  final BuildContext context;
  const PrescriptionsHelper(this.context);
  void prescriptionsInit() {
    final PrescriptionListCubit cubit = context.read<PrescriptionListCubit>();
    cubit.getPrescriptionList();
  }
}
