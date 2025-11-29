// confirmation_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/confirmation_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/confirmation_module/widgets/appointment_details_card.dart';
import 'package:medi_track/modules/confirmation_module/widgets/confirmation_footer.dart';
import 'package:medi_track/modules/confirmation_module/widgets/confirmation_header.dart';
import 'package:medi_track/modules/confirmation_module/widgets/notification_reminder.dart';

class ConfirmationBody extends StatelessWidget {
  const ConfirmationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                // Success Icon and Message
                ConfirmationHeader(),

                SizedBox(height: 24),

                // Appointment Details Card
                AppointmentDetailsCard(),

                SizedBox(height: 16),

                // Notification Reminder
                NotificationReminder(),

                SizedBox(height: 32),

                // Action Buttons
                ActionButtons(),
              ],
            ),
          ),
        ),

        // Footer
        ConfirmationFooter(),
      ],
    );
  }
}
