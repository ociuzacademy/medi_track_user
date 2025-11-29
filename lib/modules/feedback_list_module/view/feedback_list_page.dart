import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_list_module/models/feedback_item.dart';
import 'package:medi_track/modules/feedback_list_module/widgets/feedback_card.dart';

class FeedbackListPage extends StatelessWidget {
  const FeedbackListPage({super.key});

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const FeedbackListPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Sample feedback data
    final feedbackList = [
      const FeedbackItem(
        doctorName: 'Dr. Emily Carter',
        specialty: 'Cardiology',
        date: 'Oct 26, 2023',
        rating: 5,
        review:
            'A very attentive and thorough consultation. Dr. Carter explained everything clearly and put my mind at ease. The best experience I\'ve had.',
      ),
      const FeedbackItem(
        doctorName: 'Dr. Ben Adams',
        specialty: 'Dermatology',
        date: 'Sep 15, 2023',
        rating: 3,
        review:
            'The appointment felt a bit rushed, and I didn\'t get to ask all of my questions. The advice was helpful though.',
      ),
      const FeedbackItem(
        doctorName: 'Dr. Sarah Jenkins',
        specialty: 'Pediatrics',
        date: 'Aug 02, 2023',
        rating: 5,
        review:
            'Excellent with my child, very patient and kind. Made the whole experience stress-free for us. Highly recommended!',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'My Feedback',
          style: GoogleFonts.lexend(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : const Color(0xFF181111),
          ),
        ),
        backgroundColor: isDark
            ? const Color(0xFF101F22)
            : const Color(0xFFF6F8F8),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF101F22)
          : const Color(0xFFF6F8F8),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Subtitle
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                'View and manage your feedback for past appointments.',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF886364),
                ),
              ),
            ),

            // Feedback List
            Column(
              children: feedbackList
                  .map(
                    (feedback) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: FeedbackCard(feedbackItem: feedback),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
