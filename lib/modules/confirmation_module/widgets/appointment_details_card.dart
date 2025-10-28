// appointment_details_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/confirmation_module/widgets/appointment_details_column.dart';
import 'package:medi_track/modules/confirmation_module/widgets/doctor_info.dart';

class AppointmentDetailsCard extends StatelessWidget {
  const AppointmentDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF182430) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Token Number
            Text(
              'Your Token Number is 123',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2196F3),
              ),
            ),

            const SizedBox(height: 16),

            // Doctor Info
            DoctorInfo(isDark: isDark),

            const SizedBox(height: 16),

            // Divider
            Container(
              height: 1,
              color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
            ),

            const SizedBox(height: 16),

            // Appointment Details
            AppointmentDetailsColumn(isDark: isDark),
          ],
        ),
      ),
    );
  }
}
