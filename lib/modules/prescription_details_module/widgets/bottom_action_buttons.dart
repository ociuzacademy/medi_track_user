// bottom_action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_module/view/appointment_page.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF1A2F2C).withValues(alpha: 0.9)
              : Colors.white.withValues(alpha: 0.9),
          border: Border(
            top: BorderSide(
              color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
            ),
          ),
        ),
        child: Column(
          children: [
            // Download Prescription Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // Handle download prescription
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF05c7a7),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.picture_as_pdf, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Download Prescription',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Book Follow-up Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, AppointmentPage.route());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xFF05c7a7,
                  ).withValues(alpha: 0.2),
                  foregroundColor: const Color(0xFF05c7a7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Book Follow-up',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Back to Prescriptions Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  foregroundColor: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Back to Prescriptions',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
