// doctor_info_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/enums/payment_status.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_info_detail_row.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DoctorInfoCard extends StatelessWidget {
  final String doctorName;
  final String doctorSpecialization;
  final int token;
  final DateTime appointmentDate;
  final String symptoms;
  final PaymentStatus paymentStatus;
  const DoctorInfoCard({
    super.key,
    required this.doctorName,
    required this.doctorSpecialization,
    required this.token,
    required this.appointmentDate,
    required this.symptoms,
    required this.paymentStatus,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor Header
          Container(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFF04798b).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color(0xFF04798b),
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: GoogleFonts.lexend(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF212121),
                          letterSpacing: -0.015,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        doctorSpecialization,
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFF9E9E9E)
                              : const Color(0xFF616161),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Status Tags
          Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00BCD4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Upcoming',
                    style: GoogleFonts.lexend(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    paymentStatus == PaymentStatus.completed
                        ? 'Paid'
                        : 'Pending',
                    style: GoogleFonts.lexend(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Appointment Details
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                DoctorInfoDetailRow(
                  icon: Icons.medical_services,
                  label: 'Department',
                  value: doctorSpecialization,
                  isFirst: true,
                ),
                DoctorInfoDetailRow(
                  icon: Icons.confirmation_number,
                  label: 'Your Token',
                  value: token.toString(),
                  isBold: true,
                ),
                DoctorInfoDetailRow(
                  icon: Icons.calendar_today,
                  label: 'Date',
                  value: dateFormat.format(appointmentDate),
                ),
              ],
            ),
          ),

          // Divider
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 1,
            color: isDark ? const Color(0xFF37474F) : AppColors.textSecondaryDark,
          ),

          // Symptoms Section
          Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Symptoms Provided',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : const Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  symptoms,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF616161),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
