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
                const AppointmentDetailsCard(),

                const SizedBox(height: 16),

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
