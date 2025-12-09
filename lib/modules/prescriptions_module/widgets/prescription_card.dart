// prescription_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/prescription_details_module/view/prescription_details_page.dart';
import 'package:medi_track/modules/prescriptions_module/models/prescription_list_model.dart';

class PrescriptionCard extends StatelessWidget {
  final Prescription prescription;

  const PrescriptionCard({super.key, required this.prescription});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
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
                    'Completed',
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

            // Department8
            Text(
              prescription.department,
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

            const SizedBox(height: 12),

            // Date and Token
            Text(
              'Date: ${dateFormat.format(prescription.appointmentDate)}, Token: ${prescription.tokenNumber}',
              style: GoogleFonts.lexend(
                fontSize: 14,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 12),

            // View Prescription Details
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PrescriptionDetailsPage.route(prescription.id),
                );
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
          ],
        ),
      ),
    );
  }
}
