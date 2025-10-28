// medical_sections.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalSections extends StatelessWidget {
  const MedicalSections({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Symptoms Section
        Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Symptoms',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF212121),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Patient reported experiencing shortness of breath, chest discomfort, and occasional dizziness over the past two weeks.',
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

        // Doctor's Notes Section
        Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Doctor\'s Notes / Prescription',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF212121),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Conducted ECG and stress test. Results indicate mild arrhythmia. Prescribed Metoprolol 25mg once daily. Advised lifestyle changes including a low-sodium diet and moderate exercise. Follow-up scheduled in 3 months.',
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
    );
  }
}
