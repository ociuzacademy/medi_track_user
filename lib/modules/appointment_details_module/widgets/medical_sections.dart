// medical_sections.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/medicine_item.dart';

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

        // Divider
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 1,
          color: isDark ? const Color(0xFF37474F) : const Color(0xFFE0E0E0),
        ),

        // Prescribed Medicines Section
        Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Prescribed Medicines',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF212121),
                ),
              ),
              const SizedBox(height: 12),
              // Medicine List
              const Column(
                children: [
                  MedicineItem(
                    medicineName: 'Metoprolol',
                    dosage: '25mg',
                    frequency: 'Once daily',
                    duration: '30 days',
                    instructions: 'Take in the morning with food',
                  ),
                  SizedBox(height: 12),
                  MedicineItem(
                    medicineName: 'Aspirin',
                    dosage: '81mg',
                    frequency: 'Once daily',
                    duration: '30 days',
                    instructions: 'Take after breakfast',
                  ),
                  SizedBox(height: 12),
                  MedicineItem(
                    medicineName: 'Atorvastatin',
                    dosage: '20mg',
                    frequency: 'Once daily at bedtime',
                    duration: '30 days',
                    instructions: 'Take at night',
                  ),
                ],
              ),
            ],
          ),
        ),

        // Divider
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 1,
          color: isDark ? const Color(0xFF37474F) : const Color(0xFFE0E0E0),
        ),

        // Doctor's Notes Section
        Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
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
                'Conducted ECG and stress test. Results indicate mild arrhythmia. Prescribed medications as listed above. Advised lifestyle changes including a low-sodium diet and moderate exercise. Follow-up scheduled in 3 months.',
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
