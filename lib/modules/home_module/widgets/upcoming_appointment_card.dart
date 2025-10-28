import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/upcoming_appointment_card_helper.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(screenSize.width * 0.04),
      decoration: BoxDecoration(
        color: colorScheme.surface,
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
                    color: colorScheme.primary,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.005),
                Text(
                  'Dr. Emily Carter',
                  style: GoogleFonts.inter(
                    fontSize: UpcomingAppointmentCardHelper.responsiveFontSize(
                      context,
                      16,
                    ),
                    fontWeight: FontWeight.w700,
                    color: colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.002),
                Text(
                  'General Practitioner | 2:00 PM',
                  style: GoogleFonts.inter(
                    fontSize: UpcomingAppointmentCardHelper.responsiveFontSize(
                      context,
                      14,
                    ),
                    color: colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),

          // Chevron Button
          GestureDetector(
            onTap: () {
              // Handle appointment details
            },
            child: Container(
              width: screenSize.width * 0.1,
              height: screenSize.width * 0.1,
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.chevron_right,
                color: colorScheme.primary,
                size: screenSize.width * 0.06,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
