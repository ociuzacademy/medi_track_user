// rescheduled_tab.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_details_module/view/rescheduled_appointments_details_page.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class RescheduledAppointmentCard extends StatelessWidget {
  final int appointmentId;
  final String doctorName;
  final String department;
  final String tokenNumber;
  final String originalDateTime;
  final String newDateTime;
  final IconData icon;

  const RescheduledAppointmentCard({
    super.key,
    required this.appointmentId,
    required this.doctorName,
    required this.department,
    required this.tokenNumber,
    required this.originalDateTime,
    required this.newDateTime,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          RescheduledAppointmentDetailsPage.route(appointmentId: appointmentId),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card(context),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border(context)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 1,
              spreadRadius: 0,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: AppColors.primary, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctorName,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary(context),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              department,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: AppColors.textTertiary(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Token No.',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppColors.textTertiary(context),
                            ),
                          ),
                          Text(
                            tokenNumber,
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
                  const SizedBox(height: 12),
                  Container(height: 1, color: AppColors.border(context)),
                  const SizedBox(height: 12),
                  Text(
                    'Original Date & Time',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textTertiary(context),
                    ),
                  ),
                  Text(
                    originalDateTime,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppColors.textTertiary(context),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'New Date & Time',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textTertiary(context),
                    ),
                  ),
                  Text(
                    newDateTime,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
