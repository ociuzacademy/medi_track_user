// rescheduled_appointment_details_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_details_module/utils/rescheduled_appointment_details_helper.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/appointment_details.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/footer_button.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/rescheduled_doctor_card.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/warning_banner.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';

class RescheduledAppointmentDetailsPage extends StatefulWidget {
  final int appointmentId;
  const RescheduledAppointmentDetailsPage({
    super.key,
    required this.appointmentId,
  });

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) =>
        RescheduledAppointmentDetailsPage(appointmentId: appointmentId),
  );

  @override
  State<RescheduledAppointmentDetailsPage> createState() =>
      _RescheduledAppointmentDetailsPageState();
}

class _RescheduledAppointmentDetailsPageState
    extends State<RescheduledAppointmentDetailsPage> {
  late final RescheduledAppointmentDetailsHelper
  _rescheduledAppointmentDetailsHelper;
  @override
  void initState() {
    super.initState();
    _rescheduledAppointmentDetailsHelper = RescheduledAppointmentDetailsHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _rescheduledAppointmentDetailsHelper.rescheduledAppointmentDetails();
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
            color: isDark ? Colors.white : const Color(0xFF111718),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111718),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: BlocListener<RescheduleTaskBloc, RescheduleTaskState>(
        listener: (context, state) {
          switch (state) {
            case RescheduleTaskLoading(:final isAccepting):
              Navigator.pop(context);
              OverlayLoader.show(
                context,
                message: isAccepting
                    ? 'Accepting Reschedule...'
                    : 'Rejecting Reschedule...',
              );
              break;
            case RescheduleTaskError(:final message):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: message);
              break;
            case RescheduleTaskAcceptRescheduleSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              Navigator.pushAndRemoveUntil(
                context,
                HomePage.route(),
                (route) => false,
              );
              break;
            case RescheduleTaskRejectRescheduleSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              Navigator.pushAndRemoveUntil(
                context,
                HomePage.route(),
                (route) => false,
              );
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
          builder: (context, state) {
            switch (state) {
              case AppointmentDetailsLoading _:
                return const Center(child: CircularProgressIndicator());
              case AppointmentDetailsError(:final errorMessage):
                return CustomErrorWidget(
                  errorMessage: errorMessage,
                  isDark: isDark,
                  onRetry: () => _rescheduledAppointmentDetailsHelper
                      .rescheduledAppointmentDetails(),
                );
              case AppointmentDetailsSuccess(:final appointmentDetails):
                return Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            // Warning Banner
                            WarningBanner(
                              rescheduledDate: appointmentDetails
                                  .appointment
                                  .rescheduledDate!,
                            ),

                            const SizedBox(height: 16),

                            // Action Buttons
                            ActionButtons(
                              onAccept: _rescheduledAppointmentDetailsHelper
                                  .showAcceptRescheduleDialog,
                              onReject: _rescheduledAppointmentDetailsHelper
                                  .showRejectRescheduleDialog,
                            ),

                            const SizedBox(height: 16),

                            // Doctor Card
                            RescheduledDoctorCard(
                              doctorName:
                                  appointmentDetails.appointment.doctorName,
                              department:
                                  appointmentDetails.appointment.departmentName,
                              doctorImage:
                                  appointmentDetails.appointment.doctorImage,
                            ),

                            const SizedBox(height: 16),

                            // Appointment Details
                            AppointmentDetails(
                              oldAppointmentDate:
                                  appointmentDetails.appointment.date,
                              newAppointmentDate: appointmentDetails
                                  .appointment
                                  .rescheduledDate,
                              appointmentToken:
                                  appointmentDetails.appointment.tokenNumber,
                              symptoms: appointmentDetails.appointment.symptoms,
                              cancellationReason: appointmentDetails
                                  .appointment
                                  .cancellationReason,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Footer Button
                    const FooterButton(),
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
