// appointment_card.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_details_module/view/upcoming_appointment_details_page.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/appointment_cancel_button.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/appointment_card_header.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/appointment_card_symptoms_section.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, UpcomingAppointmentDetailsPage.route());
      },
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF101a22) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Header with doctor info and token
              AppointmentCardHeader(appointment: appointment, isDark: isDark),

              const SizedBox(height: 12),

              // Symptoms section
              AppointmentCardSymptomsSection(
                appointment: appointment,
                isDark: isDark,
              ),

              const SizedBox(height: 16),

              // Cancel button (only for upcoming appointments)
              if (appointment.status == AppointmentStatus.upcoming)
                AppointmentCancelButton(
                  context: context,
                  appointmentId: appointment.id,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
