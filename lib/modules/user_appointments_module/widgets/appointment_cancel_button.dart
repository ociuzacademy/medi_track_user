// appointment_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/user_appointments_module/utils/appointment_card_helper.dart';

class AppointmentCancelButton extends StatelessWidget {
  const AppointmentCancelButton({
    super.key,
    required this.context,
    required this.appointmentId,
  });

  final BuildContext context;
  final int appointmentId;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 36,
        child: ElevatedButton(
          onPressed: () => AppointmentCardHelper.showCancelConfirmation(
            context,
            appointmentId,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.error,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: Text(
            'Cancel Appointment',
            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
