// cancelled_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/cubit/appointment_details/appointment_details_cubit.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/appointment_details_module/utils/cancelled_appointment_details_helper.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/bottom_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/details_list.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/doctor_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/status_header.dart';

class CancelledAppointmentDetailsPage extends StatefulWidget {
  final int appointmentId;
  const CancelledAppointmentDetailsPage({
    super.key,
    required this.appointmentId,
  });

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) =>
        CancelledAppointmentDetailsPage(appointmentId: appointmentId),
  );

  @override
  State<CancelledAppointmentDetailsPage> createState() =>
      _CancelledAppointmentDetailsPageState();
}

class _CancelledAppointmentDetailsPageState
    extends State<CancelledAppointmentDetailsPage> {
  late final CancelledAppointmentDetailsHelper
  _cancelledAppointmentDetailsHelper;

  @override
  void initState() {
    super.initState();
    _cancelledAppointmentDetailsHelper = CancelledAppointmentDetailsHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cancelledAppointmentDetailsHelper.cancelledAppintmentDetailsInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

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
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark ? const Color(0xFF0f2023) : Colors.white,
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111718),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
        builder: (context, state) {
          return switch (state) {
            AppointmentDetailsInitial() || AppointmentDetailsLoading() =>
              const Center(child: CircularProgressIndicator()),
            AppointmentDetailsError(errorMessage: final message) =>
              CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry: () => _cancelledAppointmentDetailsHelper
                    .cancelledAppintmentDetailsInit(),
              ),
            AppointmentDetailsSuccess(appointmentDetails: final details) =>
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // Main Content Card
                          Container(
                            decoration: BoxDecoration(
                              color: isDark
                                  ? const Color(0xFF1E2B2E)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              children: [
                                // Status Header
                                const StatusHeader(),

                                const SizedBox(height: 24),

                                // Doctor Card
                                DoctorCard(
                                  doctorName: details.appointment.doctorName,
                                  department:
                                      details.appointment.departmentName,
                                  doctorImage: details.appointment.doctorImage,
                                ),

                                const SizedBox(height: 24),

                                // Details List
                                DetailsList(
                                  tokenNumber: details.appointment.tokenNumber,
                                  originalDate: dateFormat.format(
                                    details.appointment.date,
                                  ),
                                  reasonForCancellation:
                                      details.appointment.cancellationReason!,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Bottom Buttons
                  const BottomButtons(),
                ],
              ),
          };
        },
      ),
    );
  }
}
