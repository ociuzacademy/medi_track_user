// prescription_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:medi_track/modules/prescription_details_module/widgets/appointment_info_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/bottom_action_buttons.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/doctor_details_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/doctors_notes_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/medicines_section.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/patient_details_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/symptoms_card.dart'; // Add this import

class PrescriptionDetailsPage extends StatelessWidget {
  const PrescriptionDetailsPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const PrescriptionDetailsPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Prescription Details',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF111827),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2320)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111827),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {
              // Handle download action
            },
          ),
        ],
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2320)
          : const Color(0xFFf5f8f8),
      body: const Stack(
        children: [
          // Main Content
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
              bottom: 120,
            ),
            child: Column(
              children: [
                // Doctor Details Card
                DoctorDetailsCard(),

                SizedBox(height: 16),

                // Appointment Info Card
                AppointmentInfoCard(),

                SizedBox(height: 16),

                // Patient Details Card
                PatientDetailsCard(),

                SizedBox(height: 16),

                // Symptoms Card - NEW SECTION ADDED
                SymptomsCard(),

                SizedBox(height: 16),

                // Medicines Section
                MedicinesSection(),

                SizedBox(height: 16),

                // Doctor's Notes
                DoctorsNotesCard(),

                // Extra space for bottom buttons
                SizedBox(height: 100),
              ],
            ),
          ),

          // Bottom Action Buttons
          BottomActionButtons(),
        ],
      ),
    );
  }
}
