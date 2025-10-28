// feedback_form.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/comments_section.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/rating_section.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/slider_section.dart';

class FeedbackForm extends StatelessWidget {
  final int overallRating;
  final ValueChanged<int> onRatingChanged;
  final double doctorInteraction;
  final ValueChanged<double> onDoctorInteractionChanged;
  final double hospitalService;
  final ValueChanged<double> onHospitalServiceChanged;
  final TextEditingController commentsController;

  const FeedbackForm({
    super.key,
    required this.overallRating,
    required this.onRatingChanged,
    required this.doctorInteraction,
    required this.onDoctorInteractionChanged,
    required this.hospitalService,
    required this.onHospitalServiceChanged,
    required this.commentsController,
  });

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
            overallRating: overallRating,
            onRatingChanged: onRatingChanged,
            context: context,
          ),

          const SizedBox(height: 24),

          // Doctor Interaction Slider
          SliderSection(
            context: context,
            label: 'How was the interaction with the doctor?',
            value: doctorInteraction,
            onChanged: onDoctorInteractionChanged,
          ),

          const SizedBox(height: 24),

          // Hospital Service Slider
          SliderSection(
            context: context,
            label: 'How was the hospital service and waiting experience?',
            value: hospitalService,
            onChanged: onHospitalServiceChanged,
          ),

          const SizedBox(height: 24),

          // Additional Comments
          CommentsSection(
            commentsController: commentsController,
            context: context,
          ),
        ],
      ),
    );
  }
}
