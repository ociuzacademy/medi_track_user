import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class MedicalSectionsHelper {
  final BuildContext context;
  final int appointmentId;

  const MedicalSectionsHelper({
    required this.context,
    required this.appointmentId,
  });

  void medicalSectionsInit() {
    final AppointmentPrescriptionCubit appointmentPrescriptionCubit = context
        .read<AppointmentPrescriptionCubit>();
    appointmentPrescriptionCubit.fetchAppointmentPrescription(appointmentId);
  }
}
