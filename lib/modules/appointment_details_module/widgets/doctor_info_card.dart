// doctor_info_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_info_detail_row.dart';

class DoctorInfoCard extends StatelessWidget {
  const DoctorInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

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
                  child: Icon(
                    Icons.person,
                    color: const Color(0xFF04798b),
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Evelyn Reed',
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
                        'Cardiology',
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
                    'Paid',
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
                  value: 'Cardiology',
                  isFirst: true,
                ),
                DoctorInfoDetailRow(
                  icon: Icons.confirmation_number,
                  label: 'Your Token',
                  value: 'A-124',
                  isBold: true,
                ),
                DoctorInfoDetailRow(
                  icon: Icons.calendar_today,
                  label: 'Date & Time',
                  value: 'Oct 26, 2023 at 10:30 AM',
                ),
              ],
            ),
          ),

          // Divider
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 1,
            color: isDark ? const Color(0xFF37474F) : const Color(0xFFE0E0E0),
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
                  'Patient reported experiencing chest pain, shortness of breath, and occasional dizziness over the last two weeks.',
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
