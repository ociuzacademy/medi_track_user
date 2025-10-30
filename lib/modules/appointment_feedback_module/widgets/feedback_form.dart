// feedback_form.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/comments_section.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/rating_section.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/slider_section.dart';
import 'package:medi_track/modules/appointment_feedback_module/providers/feedback_provider.dart';

class FeedbackForm extends StatelessWidget {
  final FeedbackProvider feedbackProvider;

  const FeedbackForm({super.key, required this.feedbackProvider});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF182c29) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Rating
          RatingSection(
            overallRating: feedbackProvider.overallRating,
            onRatingChanged: feedbackProvider.setOverallRating,
            context: context,
          ),

          const SizedBox(height: 24),

          // Doctor Interaction Slider
          SliderSection(
            context: context,
            label: 'How was the interaction with the doctor?',
            value: feedbackProvider.doctorInteraction,
            onChanged: feedbackProvider.setDoctorInteraction,
          ),

          const SizedBox(height: 24),

          // Hospital Service Slider
          SliderSection(
            context: context,
            label: 'How was the hospital service and waiting experience?',
            value: feedbackProvider.hospitalService,
            onChanged: feedbackProvider.setHospitalService,
          ),

          const SizedBox(height: 24),

          // Additional Comments
          CommentsSection(
            commentsController: feedbackProvider.commentsController,
            context: context,
          ),
        ],
      ),
    );
  }
}
