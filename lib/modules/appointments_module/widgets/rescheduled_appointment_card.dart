// rescheduled_tab.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_details_module/view/rescheduled_appointments_details_page.dart';

class RescheduledAppointmentCard extends StatelessWidget {
  final String doctorName;
  final String department;
  final String hospital;
  final String tokenNumber;
  final String originalDateTime;
  final String newDateTime;
  final IconData icon;

  const RescheduledAppointmentCard({
    super.key,
    required this.doctorName,
    required this.department,
    required this.hospital,
    required this.tokenNumber,
    required this.originalDateTime,
    required this.newDateTime,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, RescheduledAppointmentDetailsPage.route());
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
            Icon(icon, color: const Color(0xFF007AFF), size: 32),
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
                                color: isDark
                                    ? Colors.white
                                    : const Color(0xFF111518),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '$department, $hospital',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: isDark
                                    ? const Color(0xFF9CA3AF)
                                    : const Color(0xFF6B7280),
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
                              color: isDark
                                  ? const Color(0xFF9CA3AF)
                                  : const Color(0xFF6B7280),
                            ),
                          ),
                          Text(
                            tokenNumber,
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007AFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 1,
                    color: isDark
                        ? const Color(0xFF374151)
                        : const Color(0xFFE5E7EB),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Original Date & Time',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isDark
                          ? const Color(0xFF9CA3AF)
                          : const Color(0xFF6B7280),
                    ),
                  ),
                  Text(
                    originalDateTime,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: isDark
                          ? const Color(0xFF9CA3AF)
                          : const Color(0xFF6B7280),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'New Date & Time',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isDark
                          ? const Color(0xFF9CA3AF)
                          : const Color(0xFF6B7280),
                    ),
                  ),
                  Text(
                    newDateTime,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isDark ? Colors.white : const Color(0xFF111518),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isDark
                                ? const Color(0xFF374151)
                                : const Color(0xFFE5E7EB),
                            foregroundColor: isDark
                                ? Colors.white
                                : const Color(0xFF111518),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.015,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF34C759),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Text(
                            'Accept',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.015,
                            ),
                          ),
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
    );
  }
}
