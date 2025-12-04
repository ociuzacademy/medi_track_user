import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/confirmation_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/confirmation_module/widgets/appointment_details_card.dart';
import 'package:medi_track/modules/confirmation_module/widgets/confirmation_footer.dart';
import 'package:medi_track/modules/confirmation_module/widgets/confirmation_header.dart';
import 'package:medi_track/modules/confirmation_module/widgets/notification_reminder.dart';

class ConfirmationBody extends StatelessWidget {
  const ConfirmationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Success Icon and Message
                const ConfirmationHeader(),

                const SizedBox(height: 24),

                // Appointment Details Card
                BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
                  builder: (context, state) {
                    switch (state) {
                      case AppointmentDetailsLoading _:
                        return const Center(child: CircularProgressIndicator());
                      case AppointmentDetailsSuccess(
                        appointmentDetails: final appointmentDetails,
                      ):
                        return AppointmentDetailsCard(
                          tokenNumber:
                              appointmentDetails.appointment.tokenNumber,
                          date: appointmentDetails.appointment.date,
                          status: appointmentDetails.appointment.status,
                          doctorName: appointmentDetails.appointment.doctorName,
                          department:
                              appointmentDetails.appointment.departmentName,
                          avatarUrl: appointmentDetails.appointment.doctorImage,
                        );
                      case AppointmentDetailsError(
                        errorMessage: final errorMessage,
                      ):
                        return Center(child: Text(errorMessage));
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),

                const SizedBox(height: 24),

                // Notification Reminder
                const NotificationReminder(),

                const SizedBox(height: 32),

                // Action Buttons
                const ActionButtons(),
              ],
            ),
          ),
        ),

        // Footer
        const ConfirmationFooter(),
      ],
    );
  }
}
