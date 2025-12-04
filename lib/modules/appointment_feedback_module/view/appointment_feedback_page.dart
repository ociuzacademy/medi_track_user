// appointment_feedback_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/appointment_feedback_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/appointment_summary_card.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/feedback_form.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/feedback_submit_success_dialog.dart';
import 'package:medi_track/modules/appointment_feedback_module/providers/feedback_provider.dart';

class AppointmentFeedbackPage extends StatefulWidget {
  final int appointmentId;
  const AppointmentFeedbackPage({super.key, required this.appointmentId});

  static Route route({required int appointmentId}) => MaterialPageRoute(
    builder: (_) => AppointmentFeedbackPage(appointmentId: appointmentId),
  );

  @override
  State<AppointmentFeedbackPage> createState() =>
      _AppointmentFeedbackPageState();
}

class _AppointmentFeedbackPageState extends State<AppointmentFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ChangeNotifierProvider(
      create: (_) => FeedbackProvider(),
      child: Scaffold(
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
        body: Consumer<FeedbackProvider>(
          builder: (context, feedbackProvider, _) {
            return Stack(
              children: [
                // Main Content
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Appointment Summary Card
                      AppointmentSummaryCard(
                        appointmentId: widget.appointmentId,
                      ),

                      const SizedBox(height: 24),

                      // Feedback Form
                      FeedbackForm(feedbackProvider: feedbackProvider),

                      const SizedBox(height: 24),

                      // Action Buttons
                      ActionButtons(
                        onSubmit: () =>
                            feedbackProvider.submitFeedback(context),
                        onSkip: () => Navigator.of(context).pop(),
                        isSubmitting: feedbackProvider.isSubmitting,
                      ),

                      const SizedBox(height: 32),
                    ],
                  ),
                ),

                // Loading Overlay
                if (feedbackProvider.isSubmitting)
                  Container(
                    color: Colors.black.withValues(alpha: 0.5),
                    child: const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF05c7a7),
                        ),
                      ),
                    ),
                  ),

                // Success Dialog Overlay
                if (feedbackProvider.showSuccessDialog)
                  FeedbackSubmitSuccessDialog(
                    closeSuccessDialog: () =>
                        feedbackProvider.closeSuccessDialog(context),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
