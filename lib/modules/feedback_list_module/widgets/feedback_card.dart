import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_details_module/view/feedback_details_page.dart';
import 'package:medi_track/modules/feedback_list_module/models/feedback_item.dart';
import 'package:medi_track/modules/feedback_list_module/widgets/feedback_star_rating_widget.dart';

class FeedbackCard extends StatelessWidget {
  final FeedbackItem feedbackItem;

  const FeedbackCard({super.key, required this.feedbackItem});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minWidth: 288),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF101F22) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: isDark
            ? Border.all(color: const Color(0xFF374151), width: 1)
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor Info and Date
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        feedbackItem.doctorName,
                        style: GoogleFonts.lexend(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.015,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF181111),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        feedbackItem.specialty,
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: isDark
                              ? const Color(0xFF9CA3AF)
                              : const Color(0xFF886364),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  feedbackItem.date,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: isDark
                        ? const Color(0xFF9CA3AF)
                        : const Color(0xFF886364),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Star Rating
            FeedbackStarRatingWidget(
              rating: feedbackItem.rating,
              isDark: isDark,
            ),

            const SizedBox(height: 12),

            // Review Text
            Text(
              feedbackItem.review,
              style: GoogleFonts.lexend(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF886364),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 12),

            // View Details Button
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: screenWidth > 600 ? 480 : double.infinity,
                constraints: const BoxConstraints(minWidth: 84, maxWidth: 480),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, FeedbackDetailsPage.route());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF13C8EC), // New primary color
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'View Details',
                    style: GoogleFonts.lexend(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}