import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/appointment_details_module/view/upcoming_appointment_details_page.dart';
import 'package:medi_track/modules/home_module/utils/upcoming_appointment_card_helper.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({
    super.key,
    required this.bookingId,
    required this.doctorName,
    required this.departmentName,
    required this.appointmentDate,
  });
  final int bookingId;
  final String doctorName;
  final String departmentName;
  final DateTime appointmentDate;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(screenSize.width * 0.04),
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: BorderRadius.circular(screenSize.width * 0.03),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Appointment Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Appointment',
                  style: GoogleFonts.inter(
                    fontSize: UpcomingAppointmentCardHelper.responsiveFontSize(
                      context,
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.005),
                Text(
                  doctorName,
                  style: GoogleFonts.inter(
                    fontSize: UpcomingAppointmentCardHelper.responsiveFontSize(
                      context,
                      16,
                    ),
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary(context),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.002),
                Text(
                  '$departmentName | ${dateFormat.format(appointmentDate)}',
                  style: GoogleFonts.inter(
                    fontSize: UpcomingAppointmentCardHelper.responsiveFontSize(
                      context,
                      14,
                    ),
                    color: AppColors.textPrimary(
                      context,
                    ).withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),

          // Chevron Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                UpcomingAppointmentDetailsPage.route(
                  appointmentId: bookingId,
                  isDirectlyFromHome: true,
                ),
              );
            },
            child: Container(
              width: screenSize.width * 0.1,
              height: screenSize.width * 0.1,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.chevron_right,
                color: AppColors.primary,
                size: screenSize.width * 0.06,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
