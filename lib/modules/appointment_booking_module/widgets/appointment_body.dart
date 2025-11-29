// appointment_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
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
        return MultiBlocListener(
          listeners: [
            BlocListener<DepartmentsCubit, DepartmentsState>(
              listener: (context, state) {
                switch (state) {
                  case DepartmentsSuccess(:final departments):
                    appointmentProvider.setDepartments(departments.departments);
                    break;

                  default:
                    break;
                }
              },
            ),
            BlocListener<AvailableDoctorsCubit, AvailableDoctorsState>(
              listener: (context, state) {
                switch (state) {
                  case AvailableDoctorsSuccess(:final availableDoctors):
                    appointmentProvider.setDoctors(
                      availableDoctors.availableDoctors,
                    );
                    break;

                  default:
                    break;
                }
              },
            ),
            BlocListener<ExpectedTokenCubit, ExpectedTokenState>(
              listener: (context, state) {
                switch (state) {
                  case ExpectedTokenSuccess(:final expectedToken):
                    appointmentProvider.setExpectedToken(
                      expectedToken.expectedTokenNumber,
                    );
                    break;
                  default:
                }
              },
            ),
          ],
          child: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Description
                HeaderDescriptionWidget(),

                // Form Section
                AppointmentFormSection(),

                // Available Doctors
                AvailableDoctorsSection(),

                // Patient Information
                PatientInfoSection(),

                // Appointment Summary
                AppointmentSummarySection(),

                // Spacer
                SizedBox(height: 80),

                // Confirm Button
                ConfirmButtonSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
