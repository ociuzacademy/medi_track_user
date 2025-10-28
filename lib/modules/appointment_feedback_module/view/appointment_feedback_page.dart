// appointment_feedback_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_feedback_module/utils/appointment_feedback_helper.dart';

import 'package:medi_track/modules/appointment_feedback_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/appointment_summary_card.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/feedback_form.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/feedback_submit_success_dialog.dart';

class AppointmentFeedbackPage extends StatefulWidget {
  const AppointmentFeedbackPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const AppointmentFeedbackPage());

  @override
  State<AppointmentFeedbackPage> createState() =>
      _AppointmentFeedbackPageState();
}

class _AppointmentFeedbackPageState extends State<AppointmentFeedbackPage> {
  late final AppointmentFeedbackHelper _appointmentFeedbackHelper;
  final ValueNotifier<int> _overallRating = ValueNotifier(4);
  final ValueNotifier<double> _doctorInteraction = ValueNotifier(4.0);
  final ValueNotifier<double> _hospitalService = ValueNotifier(3.0);
  final TextEditingController _commentsController = TextEditingController();
  final ValueNotifier<bool> _showSuccessDialog = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _appointmentFeedbackHelper = AppointmentFeedbackHelper(
      context: context,
      showSuccessDialog: _showSuccessDialog,
    );
  }

  @override
  void dispose() {
    _overallRating.dispose();
    _doctorInteraction.dispose();
    _hospitalService.dispose();
    _commentsController.dispose();
    _showSuccessDialog.dispose();
    super.dispose();
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
          'Appointment Feedback',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : const Color(0xFF111817),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark ? const Color(0xFF182c29) : Colors.white,
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111817),
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2320)
          : const Color(0xFFf5f8f8),
      body: Stack(
        children: [
          // Main Content
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Appointment Summary Card
                const AppointmentSummaryCard(),

                const SizedBox(height: 24),

                // Feedback Form with ValueListenableBuilders
                ValueListenableBuilder<int>(
                  valueListenable: _overallRating,
                  builder: (context, overallRating, _) {
                    return ValueListenableBuilder<double>(
                      valueListenable: _doctorInteraction,
                      builder: (context, doctorInteraction, _) {
                        return ValueListenableBuilder<double>(
                          valueListenable: _hospitalService,
                          builder: (context, hospitalService, _) {
                            return FeedbackForm(
                              overallRating: overallRating,
                              onRatingChanged: (rating) {
                                _overallRating.value = rating;
                              },
                              doctorInteraction: doctorInteraction,
                              onDoctorInteractionChanged: (value) {
                                _doctorInteraction.value = value;
                              },
                              hospitalService: hospitalService,
                              onHospitalServiceChanged: (value) {
                                _hospitalService.value = value;
                              },
                              commentsController: _commentsController,
                            );
                          },
                        );
                      },
                    );
                  },
                ),

                const SizedBox(height: 24),

                // Action Buttons
                ActionButtons(
                  onSubmit: _appointmentFeedbackHelper.submitFeedback,
                  onSkip: () => Navigator.of(context).pop(),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),

          // Success Dialog Overlay with ValueListenableBuilder
          ValueListenableBuilder<bool>(
            valueListenable: _showSuccessDialog,
            builder: (context, showSuccessDialog, _) {
              return showSuccessDialog
                  ? FeedbackSubmitSuccessDialog(
                      closeSuccessDialog:
                          _appointmentFeedbackHelper.closeSuccessDialog,
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
