// appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_details_module/utils/upcoming_appointment_details_helper.dart';

import 'package:medi_track/modules/appointment_details_module/widgets/doctor_info_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/live_status_card.dart';

class UpcomingAppointmentDetailsPage extends StatefulWidget {
  final int appointmentId;
  final bool isDirectlyFromHome;
  const UpcomingAppointmentDetailsPage({
    super.key,
    required this.appointmentId,
    required this.isDirectlyFromHome,
  });

  static Route route({
    required int appointmentId,
    required bool isDirectlyFromHome,
  }) => MaterialPageRoute(
    builder: (_) => UpcomingAppointmentDetailsPage(
      appointmentId: appointmentId,
      isDirectlyFromHome: isDirectlyFromHome,
    ),
  );

  @override
  State<UpcomingAppointmentDetailsPage> createState() =>
      _UpcomingAppointmentDetailsPageState();
}

class _UpcomingAppointmentDetailsPageState
    extends State<UpcomingAppointmentDetailsPage> {
  late final UpcomingAppointmentDetailsHelper _upcomingAppointmentDetailsHelper;

  @override
  void initState() {
    super.initState();
    _upcomingAppointmentDetailsHelper = UpcomingAppointmentDetailsHelper(
      context: context,
      appointmentId: widget.appointmentId,
      isDirectlyFromHome: widget.isDirectlyFromHome,
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _upcomingAppointmentDetailsHelper.upcomingAppintmentDetailsInit();
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
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFF8FAFB),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF212121),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFF8FAFB),
      body: BlocListener<MarkLateBloc, MarkLateState>(
        listener: (context, state) {
          switch (state) {
            case MarkLateLoading():
              OverlayLoader.show(context, message: 'Marking as late...');
              break;
            case MarkLateSuccess():
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: 'Marked as late');
              _upcomingAppointmentDetailsHelper.upcomingAppintmentDetailsInit();
              break;
            case MarkLateError(:final message):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: message);
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
          builder: (context, state) {
            switch (state) {
              case AppointmentDetailsLoading():
                return const Center(child: CircularProgressIndicator());
              case AppointmentDetailsError(:final errorMessage):
                return CustomErrorWidget(
                  errorMessage: errorMessage,
                  isDark: isDark,
                  onRetry: () => _upcomingAppointmentDetailsHelper
                      .upcomingAppintmentDetailsInit(),
                );

              case AppointmentDetailsSuccess(:final appointmentDetails):
                final bool isToday =
                    appointmentDetails.appointment.date.year ==
                        DateTime.now().year &&
                    appointmentDetails.appointment.date.month ==
                        DateTime.now().month &&
                    appointmentDetails.appointment.date.day ==
                        DateTime.now().day;
                return Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            // Live Status Card
                            if (isToday)
                              LiveStatusCard(
                                doctorId:
                                    appointmentDetails.appointment.doctorId,
                                tokenNumber:
                                    appointmentDetails.appointment.tokenNumber,
                                appointmentId:
                                    appointmentDetails.appointment.id,
                              ),

                            const SizedBox(height: 16),

                            // Doctor Info Card
                            DoctorInfoCard(
                              doctorName:
                                  appointmentDetails.appointment.doctorName,
                              doctorSpecialization:
                                  appointmentDetails.appointment.departmentName,
                              token: appointmentDetails.appointment.tokenNumber,
                              appointmentDate:
                                  appointmentDetails.appointment.date,
                              symptoms: appointmentDetails.appointment.symptoms,
                              paymentStatus:
                                  appointmentDetails.appointment.paymentStatus,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Footer Buttons
                    FooterButtons(
                      onCancel: _upcomingAppointmentDetailsHelper
                          .showCancelConfirmation,
                    ),
                  ],
                );
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
