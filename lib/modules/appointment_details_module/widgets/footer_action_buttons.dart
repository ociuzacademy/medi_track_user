// footer_action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_details_module/utils/footer_action_buttons_helper.dart';
import 'package:medi_track/modules/appointment_feedback_module/view/appointment_feedback_page.dart';
import 'package:medi_track/modules/appointment_booking_module/view/appointment_booking_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class FooterActionButtons extends StatefulWidget {
  final int appointmentId;
  final bool hasFeedback;
  const FooterActionButtons({
    super.key,
    required this.appointmentId,
    required this.hasFeedback,
  });

  @override
  State<FooterActionButtons> createState() => _FooterActionButtonsState();
}

class _FooterActionButtonsState extends State<FooterActionButtons> {
  late final FooterActionButtonsHelper _footerActionButtonsHelper;

  @override
  void initState() {
    super.initState();
    _footerActionButtonsHelper = FooterActionButtonsHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocConsumer<AppointmentPdfBloc, AppointmentPdfState>(
      listener: (context, state) {
        switch (State) {
          case AppointmentPdfLoading _:
            OverlayLoader.show(context);
            break;
          case AppointmentPdfSuccess _:
            OverlayLoader.hide();
            CustomSnackbar.showSuccess(
              context,
              message: 'PDF generated successfully',
            );
            break;
          case AppointmentPdfError(:final message):
            OverlayLoader.hide();
            CustomSnackbar.showError(context, message: message);
            break;
          default:
            OverlayLoader.hide();
            break;
        }
      },
      builder: (context, state) {
        final isLoading = switch (state) {
          AppointmentPdfLoading _ => true,
          _ => false,
        };

        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF0f2023) : const Color(0xFFf5f8f8),
            border: Border(
              top: BorderSide(
                color: isDark
                    ? const Color(0xFF37474F)
                    : AppColors.textSecondaryDark,
              ),
            ),
          ),
          child: Column(
            children: [
              // Download Report Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : _footerActionButtonsHelper.generateAppointmentPdf,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF009688),
                    foregroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.download, size: 20),
                            const SizedBox(width: 8),
                            Text(
                              'Download Report / View Prescription',
                              style: GoogleFonts.lexend(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                ),
              ),

              const SizedBox(height: 12),

              // Provide Feedback Button
              if (!widget.hasFeedback)
                SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              AppointmentFeedbackPage.route(
                                appointmentId: widget.appointmentId,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF007C91),
                            foregroundColor: Colors.white,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.rate_review, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Provide Feedback',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                    ],
                  ),
                ),

              // Book Follow-Up Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, AppointmentBookingPage.route());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF007C91),
                    foregroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Book Follow-Up Appointment',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Back Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF616161),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Back to My Appointments',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
