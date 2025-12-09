// prescription_details_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/prescription_details_module/cubit/prescription_details_cubit.dart';
import 'package:medi_track/modules/prescription_details_module/utils/prescription_details_helper.dart';

import 'package:medi_track/modules/prescription_details_module/widgets/appointment_info_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/bottom_action_buttons.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/doctor_details_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/doctors_notes_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/medicines_section.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/patient_details_card.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/symptoms_card.dart';
import 'package:medi_track/core/constants/app_colors.dart'; // Add this import

class PrescriptionDetailsPage extends StatefulWidget {
  final int prescriptionId;
  const PrescriptionDetailsPage({super.key, required this.prescriptionId});

  static Route route(int prescriptionId) => MaterialPageRoute(
    builder: (_) => PrescriptionDetailsPage(prescriptionId: prescriptionId),
  );

  @override
  State<PrescriptionDetailsPage> createState() =>
      _PrescriptionDetailsPageState();
}

class _PrescriptionDetailsPageState extends State<PrescriptionDetailsPage> {
  late final PrescriptionDetailsHelper _prescriptionDetailsHelper;
  @override
  void initState() {
    super.initState();
    _prescriptionDetailsHelper = PrescriptionDetailsHelper(
      context: context,
      prescriptionId: widget.prescriptionId,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _prescriptionDetailsHelper.prescriptionDetailsInitializer();
    });
  }

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
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2320)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : AppColors.textPrimaryLight,
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2320)
          : const Color(0xFFf5f8f8),
      body: BlocBuilder<PrescriptionDetailsCubit, PrescriptionDetailsState>(
        builder: (context, state) {
          switch (state) {
            case PrescriptionDetailsLoading _:
              return const Center(child: CircularProgressIndicator());
            case PrescriptionDetailsError(:final message):
              return CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry:
                    _prescriptionDetailsHelper.prescriptionDetailsInitializer,
              );
            case PrescriptionDetailsSuccess(:final data):
              return Stack(
                children: [
                  // Main Content
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                      bottom: 120,
                    ),
                    child: Column(
                      children: [
                        // Doctor Details Card
                        DoctorDetailsCard(
                          name: data.doctor.name,
                          specialization: data.doctor.specialization,
                          email: data.doctor.email,
                        ),

                        const SizedBox(height: 16),

                        // Appointment Info Card
                        AppointmentInfoCard(
                          tokenNumber: data.appointment.tokenNumber,
                          date: data.appointment.date,
                        ),

                        const SizedBox(height: 16),

                        // Patient Details Card
                        PatientDetailsCard(
                          username: data.patient.username,
                          email: data.patient.email,
                          phoneNumber: data.patient.phoneNumber,
                        ),

                        const SizedBox(height: 16),

                        // Symptoms Card
                        SymptomsCard(symptoms: data.symptoms),

                        const SizedBox(height: 16),

                        // Medicines Section
                        MedicinesSection(medicines: data.medicines),

                        const SizedBox(height: 16),

                        // Doctor's Notes
                        DoctorsNotesCard(notes: data.notes),

                        // Extra space for bottom buttons
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),

                  // Bottom Action Buttons
                  const BottomActionButtons(),
                ],
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
