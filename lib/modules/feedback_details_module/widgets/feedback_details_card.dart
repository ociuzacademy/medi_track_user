import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/rating_bar_widget.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/star_rating_widget.dart';

class FeedbackDetailsCard extends StatelessWidget {
  final int overallRating;
  final double doctorInteraction;
  final double waitingExperience;
  final DateTime submissionDate;
  final String feedbackText;

  const FeedbackDetailsCard({
    super.key,
    required this.overallRating,
    required this.doctorInteraction,
    required this.waitingExperience,
    required this.submissionDate,
    required this.feedbackText,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('MMMM d, yyyy');

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2A2D) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: 0.1,
            ), // Fixed: using withValues instead of withOpacity
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Your Feedback',
            style: GoogleFonts.lexend(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.015,
              color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 16),

          // Overall Rating
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overall Rating',
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: isDark
                      ? const Color(0xFFE0E0E0)
                      : const Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  // Stars
                  StarRatingWidget(rating: overallRating),
                  const SizedBox(width: 8),
                  // Rating Text
                  Text(
                    '$overallRating/5',
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isDark
                          ? const Color(0xFFE0E0E0)
                          : const Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Rating Bars
          Column(
            children: [
              // Doctor Interaction Rating
              RatingBarWidget(
                label: 'Doctor Interaction',
                value: doctorInteraction,
                isDark: isDark,
              ),

              const SizedBox(height: 16),

              // Hospital Service Rating
              RatingBarWidget(
                label: 'Hospital Service / Waiting Experience',
                value: waitingExperience,
                isDark: isDark,
              ),
            ],
          ),

          // Divider
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 1,
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),

          // Feedback Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Submitted On: ${dateFormat.format(submissionDate)}',
                style: GoogleFonts.lexend(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: isDark
                      ? const Color(0xFFBDBDBD)
                      : const Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                feedbackText,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  color: isDark
                      ? const Color(0xFFE0E0E0)
                      : const Color(0xFF333333),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
