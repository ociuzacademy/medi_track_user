// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';

class RescheduledAppointmentsHelper {
  final BuildContext context;
  final ValueNotifier<List<RescheduledAppointment>> appointments;

  const RescheduledAppointmentsHelper({
    required this.context,
    required this.appointments,
  });

  void markAllAsRead() {
    // In a real app, you would update the backend and then refresh
    CustomSnackbar.show(context, message: 'All notifications marked as read');
  }

  void refreshData() {
    // In a real app, you would fetch fresh data from the backend
    appointments.value = List.of(appointments.value);
  }

  void acceptAppointment(String appointmentId) {
    final list = List<RescheduledAppointment>.from(appointments.value);
    final index = list.indexWhere((appt) => appt.id == appointmentId);
    if (index != -1) {
      list[index] = RescheduledAppointment(
        id: list[index].id,
        doctorName: list[index].doctorName,
        specialty: list[index].specialty,
        doctorImageUrl: list[index].doctorImageUrl,
        originalDate: list[index].originalDate,
        originalToken: list[index].originalToken,
        rescheduledDate: list[index].rescheduledDate,
        rescheduledToken: list[index].rescheduledToken,
        reason: list[index].reason,
        receivedTime: list[index].receivedTime,
        status: AppointmentStatus.accepted,
      );
      appointments.value = list;
    }
    CustomSnackbar.showSuccess(
      context,
      message: 'Appointment reschedule accepted',
    );
  }

  void rejectAppointment(String appointmentId) {
    final list = List<RescheduledAppointment>.from(appointments.value);
    list.removeWhere((appt) => appt.id == appointmentId);
    appointments.value = list;
    CustomSnackbar.showError(
      context,
      message: 'Appointment reschedule rejected',
    );
  }
}
