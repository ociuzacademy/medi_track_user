// completed_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/cubit/appointment_details/appointment_details_cubit.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/appointment_details_module/utils/completed_appointment_details_helper.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/appointment_details_list.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_action_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/medical_sections.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_chips.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_profile_header.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class CompletedAppointmentDetailsPage extends StatefulWidget {
  final int appointmentId;
  const CompletedAppointmentDetailsPage({
    super.key,
    required this.appointmentId,
  });

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) =>
        CompletedAppointmentDetailsPage(appointmentId: appointmentId),
  );

  @override
  State<CompletedAppointmentDetailsPage> createState() =>
      _CompletedAppointmentDetailsPageState();
}

class _CompletedAppointmentDetailsPageState
    extends State<CompletedAppointmentDetailsPage> {
  late final CompletedAppointmentDetailsHelper
  _completedAppointmentDetailsHelper;
  @override
  void initState() {
    super.initState();
    _completedAppointmentDetailsHelper = CompletedAppointmentDetailsHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _completedAppointmentDetailsHelper.completedAppintmentDetailsInit();
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
          'Appointment Details',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : const Color(0xFF212121),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark ? const Color(0xFF0f2023) : Colors.white,
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF212121),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
        builder: (context, state) {
          switch (state) {
            case AppointmentDetailsLoading():
              return const Center(child: CircularProgressIndicator());
            case AppointmentDetailsError(:final errorMessage):
              return CustomErrorWidget(
                errorMessage: errorMessage,
                isDark: isDark,
                onRetry: () => _completedAppointmentDetailsHelper
                    .completedAppintmentDetailsInit(),
              );
            case AppointmentDetailsSuccess(:final appointmentDetails):
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // Main Card Container
                          Container(
                            decoration: BoxDecoration(
                              color: isDark
                                  ? const Color(0xFF1E2B2E)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                // Doctor Profile Header
                                DoctorProfileHeader(
                                  doctorName:
                                      appointmentDetails.appointment.doctorName,
                                  doctorSpecialization: appointmentDetails
                                      .appointment
                                      .departmentName,
                                  doctorImage: appointmentDetails
                                      .appointment
                                      .doctorImage,
                                ),

                                // Status Chips
                                StatusChips(
                                  status: appointmentDetails.appointment.status,
                                  paymentStatus: appointmentDetails
                                      .appointment
                                      .paymentStatus,
                                ),

                                // Appointment Details
                                AppointmentDetailsList(
                                  department: appointmentDetails
                                      .appointment
                                      .departmentName,
                                  appointmentToken: appointmentDetails
                                      .appointment
                                      .tokenNumber,
                                  dateTime: appointmentDetails.appointment.date,
                                ),

                                // Divider
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  height: 1,
                                  color: isDark
                                      ? const Color(0xFF37474F)
                                      : AppColors.textSecondaryDark,
                                ),

                                // Medical Sections
                                MedicalSections(
                                  appointmentId: widget.appointmentId,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Footer Action Buttons
                  FooterActionButtons(
                    appointmentId: widget.appointmentId,
                    hasFeedback: appointmentDetails.hasFeedback,
                  ),
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
