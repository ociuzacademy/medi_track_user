// patient_info_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_module/widgets/patient_info_row.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';

class PatientInfoSection extends StatelessWidget {
  const PatientInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentProvider = Provider.of<AppointmentProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Patient Information',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111518),
            ),
          ),
        ),
        // Patient Details Card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(
              0xFFBBDEFB,
            ).withValues(alpha: isDark ? 0.1 : 0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(
                0xFFBBDEFB,
              ).withValues(alpha: isDark ? 0.3 : 0.5),
            ),
          ),
          child: Column(
            children: [
              PatientInfoRow(
                label: 'Patient Name',
                value: appointmentProvider.patientName,
                isDark: isDark,
              ),
              const SizedBox(height: 12),
              PatientInfoRow(
                label: 'Patient ID',
                value: appointmentProvider.patientId,
                isDark: isDark,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        // Symptoms Text Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reason for Visit / Symptoms',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : const Color(0xFF111518),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 112,
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF101a22) : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isDark
                      ? const Color(0xFF374151)
                      : const Color(0xFFdbe1e6),
                ),
              ),
              child: TextField(
                onChanged: (value) {
                  appointmentProvider.setSymptoms(value);
                },
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'e.g. Chest pain, annual check-up...',
                  hintStyle: GoogleFonts.inter(
                    color: (isDark ? Colors.white : const Color(0xFF111518))
                        .withValues(alpha: 0.5),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16),
                ),
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: isDark ? Colors.white : const Color(0xFF111518),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
