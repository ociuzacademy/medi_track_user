// appointment_feedback_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_feedback_module/bloc/submit_feedback_bloc.dart';
import 'package:medi_track/modules/appointment_feedback_module/utils/appointment_feedback_helper.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/appointment_feedback_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/appointment_summary_card.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/feedback_form.dart';
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
  late final AppointmentFeedbackHelper _appointmentFeedbackHelper;
  @override
  void initState() {
    super.initState();
    _appointmentFeedbackHelper = AppointmentFeedbackHelper(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ChangeNotifierProvider(
      create: (_) => FeedbackProvider(appointmentId: widget.appointmentId),
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
            return BlocListener<SubmitFeedbackBloc, SubmitFeedbackState>(
              listener: (context, state) {
                switch (state) {
                  case SubmitFeedbackLoading _:
                    OverlayLoader.show(
                      context,
                      message: 'Submitting Feedback...',
                    );
                    break;
                  case SubmitFeedbackSuccess(:final response):
                    OverlayLoader.hide();
                    CustomSnackbar.showSuccess(
                      context,
                      message: response.message,
                    );
                    Navigator.pushAndRemoveUntil(
                      context,
                      HomePage.route(),
                      (route) => false,
                    );
                    break;
                  case SubmitFeedbackError(:final message):
                    OverlayLoader.hide();
                    CustomSnackbar.showError(context, message: message);
                    break;
                  default:
                    OverlayLoader.hide();
                    break;
                }
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Appointment Summary Card
                    AppointmentSummaryCard(appointmentId: widget.appointmentId),

                    const SizedBox(height: 24),

                    // Feedback Form
                    FeedbackForm(feedbackProvider: feedbackProvider),

                    const SizedBox(height: 24),

                    // Action Buttons
                    ActionButtons(
                      onSubmit: () => _appointmentFeedbackHelper.submitFeedback(
                        feedbackProvider,
                      ),
                      onSkip: () => Navigator.of(context).pop(),
                    ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
