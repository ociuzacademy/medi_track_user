// completed_appointment_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/appointment_details_module/view/completed_appointment_details_page.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class CompletedAppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const CompletedAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CompletedAppointmentDetailsPage.route(appointmentId: appointment.id),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? AppColors.cardDark : AppColors.cardLight,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border(context)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with doctor info and status badge
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appointment.doctorName,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary(context),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          appointment.departmentName,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: AppColors.textTertiary(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Completed badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.success.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.success.withValues(alpha: 0.2),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Completed',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.success,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Date and token section
              Container(
                padding: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.border(context)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Date
                    Text(
                      dateFormat.format(appointment.date),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppColors.textTertiary(context),
                      ),
                    ),

                    // Token number
                    Column(
                      children: [
                        Text(
                          'Token No.',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: AppColors.textTertiary(context),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          appointment.tokenNumber.toString(),
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
