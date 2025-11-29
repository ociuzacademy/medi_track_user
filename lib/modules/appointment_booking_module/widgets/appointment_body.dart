// appointment_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/appointment_form_section.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/appointment_summary_section.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/available_doctors_section.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/confirm_button_section.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/header_description_widget.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/patient_info_section.dart';
import 'package:provider/provider.dart';

class AppointmentBody extends StatelessWidget {
  const AppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppointmentBookingProvider>(
      builder: (context, appointmentProvider, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Description
              HeaderDescriptionWidget(),

              // Form Section
              const AppointmentFormSection(),

              // Available Doctors
              const AvailableDoctorsSection(),

              // Patient Information
              const PatientInfoSection(),

              // Appointment Summary
              const AppointmentSummarySection(),

              // Spacer
              const SizedBox(height: 80),

              // Confirm Button
              const ConfirmButtonSection(),
            ],
          ),
        );
      },
    );
  }
}
