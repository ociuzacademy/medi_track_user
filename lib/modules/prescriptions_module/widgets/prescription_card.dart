// prescription_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/view/prescription_details_page.dart';
import 'package:medi_track/modules/prescriptions_module/models/prescription_data.dart';

class PrescriptionCard extends StatelessWidget {
  final PrescriptionData prescription;

  const PrescriptionCard({super.key, required this.prescription});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with doctor name and status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  prescription.doctorName,
                  style: GoogleFonts.lexend(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark ? Colors.white : const Color(0xFF111827),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? const Color(0xFF065F46)
                        : const Color(0xFFD1FAE5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    prescription.status,
                    style: GoogleFonts.lexend(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isDark
                          ? const Color(0xFF34D399)
                          : const Color(0xFF065F46),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // Specialty
            Text(
              prescription.specialty,
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 8),

            // Divider
            Container(
              height: 1,
              color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
            ),

            const SizedBox(height: 8),

            // Date and Token
            Text(
              'Date: ${prescription.date}, Token: ${prescription.token}',
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 4),

            // Description
            Text(
              prescription.description,
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 12),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // View Full Prescription Button
                TextButton(
                  onPressed: () {
                    Navigator.push(context, PrescriptionDetailsPage.route());
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF04798b),
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View Full Prescription',
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                // Download Button
                IconButton(
                  onPressed: () {
                    // Handle download
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: isDark
                        ? const Color(0xFF374151)
                        : const Color(0xFFF3F4F6),
                    shape: const CircleBorder(),
                    minimumSize: const Size(40, 40),
                  ),
                  icon: Icon(
                    Icons.download,
                    color: isDark
                        ? const Color(0xFF9CA3AF)
                        : const Color(0xFF6B7280),
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
