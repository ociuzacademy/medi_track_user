// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/appointment_feedback_module/classes/feedback_data.dart';
import 'package:medi_track/modules/appointment_feedback_module/providers/feedback_provider.dart';

class AppointmentFeedbackHelper {
  final BuildContext context;

  const AppointmentFeedbackHelper({required this.context});

  void submitFeedback(FeedbackProvider feedbackProvider) {
    final FeedbackData? feedbackData = feedbackProvider.feedbackData;

    if (feedbackData == null) {
      CustomSnackbar.showError(
        context,
        message: 'Please fill in all the fields',
      );
      return;
    } else {
      showDialog(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('Submit Feedback'),
          content: const Text('Are you sure you want to submit this feedback?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.read<SubmitFeedbackBloc>().add(
                  SubmitFeedbackEvent.submittingFeedback(
                    feedbackData: feedbackData,
                  ),
                );
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
