// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_details_module/utils/feedback_details_helper.dart';

class RatingBarWidget extends StatelessWidget {
  final String label;
  final int value;
  final bool isDark;
  const RatingBarWidget({
    super.key,
    required this.label,
    required this.value,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.lexend(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 8),
        Stack(
          children: [
            // Background
            Container(
              width: double.infinity,
              height: 8,
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF374151)
                    : const Color(0xFFE5E7EB),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            // Progress
            Container(
              width: double.infinity,
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFF4A90E2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: FractionallySizedBox(
                widthFactor: value / 100,
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A90E2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            // Thumb indicator
            Positioned(
              left: FeedbackDetailsHelper.calculateThumbPosition(
                value,
              ), // Fixed: using double instead of string
              top: 0,
              bottom: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: const Color(0xFF4A90E2),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isDark ? const Color(0xFF1A2A2D) : Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
