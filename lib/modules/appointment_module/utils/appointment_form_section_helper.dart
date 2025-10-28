import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';
import 'package:provider/provider.dart';

class AppointmentFormSectionHelper {
  static Future<void> selectDate(BuildContext context) async {
    final appointmentProvider = Provider.of<AppointmentProvider>(
      context,
      listen: false,
    );

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 5)),
    );

    if (picked != null) {
      appointmentProvider.setSelectedDate(picked);
    }
  }
}
