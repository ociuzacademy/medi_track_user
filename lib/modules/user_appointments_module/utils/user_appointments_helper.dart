import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class UserAppointmentsHelper {
  final BuildContext context;
  UserAppointmentsHelper({required this.context});

  void appointmentListInit() {
    final AppointmentListCubit appointmentListCubit = context
        .read<AppointmentListCubit>();
    appointmentListCubit.getUserAppointments();
  }

  static IconData getIconForSpecialty(String specialty) {
    switch (specialty.toLowerCase()) {
      case 'cardiology':
        return Icons.favorite_outline;
      case 'dermatology':
        return Icons.face_outlined;
      case 'neurology':
        return Icons.psychology_outlined;
      case 'orthopedics':
        return Icons.accessible_outlined;
      case 'pediatrics':
        return Icons.child_care_outlined;
      case 'gynecology':
        return Icons.pregnant_woman_outlined;
      case 'ophthalmology':
        return Icons.remove_red_eye_outlined;
      default:
        return Icons.medical_services_outlined;
    }
  }
}
