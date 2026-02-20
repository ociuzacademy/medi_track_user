// [file name]: home_content.dart
// [file content begin]

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/appointment_booking_module/view/appointment_booking_page.dart';

class UpcomingAppointmentsEmptyWidget extends StatelessWidget {
  const UpcomingAppointmentsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: AppColors.border(context)),
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFE0F2FE),
              shape: BoxShape.circle,
              gradient: isDark
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF0C4A6E).withValues(alpha: 0.8),
                        const Color(0xFF0369A1).withValues(alpha: 0.6),
                      ],
                    )
                  : const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFE0F2FE), Color(0xFFBAE6FD)],
                    ),
            ),
            child: Icon(
              Icons.calendar_today,
              size: 48,
              color: isDark ? const Color(0xFF7DD3FC) : const Color(0xFF0284C7),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No Upcoming Appointments',
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary(context),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            "You don't have any scheduled appointments. Book an appointment to see it here.",
            style: GoogleFonts.inter(
              fontSize: 15,
              color: AppColors.textTertiary(context),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, AppointmentBookingPage.route());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryAlt,
              foregroundColor: Colors.white,
              minimumSize: const Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.add, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Book Appointment',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // TextButton(
          //   onPressed: () {
          //     // Show past appointments
          //   },
          //   child: Text(
          //     'View Past Appointments',
          //     style: GoogleFonts.inter(
          //       fontSize: 14,
          //       color: AppColors.primaryAlt,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
