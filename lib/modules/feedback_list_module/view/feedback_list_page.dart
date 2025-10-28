import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_list_module/models/feedback_item.dart';
import 'package:medi_track/modules/feedback_list_module/widgets/feedback_card.dart';

class FeedbackListPage extends StatelessWidget {
  const FeedbackListPage({super.key});

  static route() => MaterialPageRoute(builder: (_) => FeedbackListPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Sample feedback data
    final feedbackList = [
      FeedbackItem(
        doctorName: 'Dr. Emily Carter',
        specialty: 'Cardiology',
        date: 'Oct 26, 2023',
        rating: 5,
        review:
            'A very attentive and thorough consultation. Dr. Carter explained everything clearly and put my mind at ease. The best experience I\'ve had.',
      ),
      FeedbackItem(
        doctorName: 'Dr. Ben Adams',
        specialty: 'Dermatology',
        date: 'Sep 15, 2023',
        rating: 3,
        review:
            'The appointment felt a bit rushed, and I didn\'t get to ask all of my questions. The advice was helpful though.',
      ),
      FeedbackItem(
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
          ),
        ),
        backgroundColor: isDark
            ? const Color(0xFF211111)
            : const Color(0xFFf8f6f6),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF211111)
          : const Color(0xFFf8f6f6),
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
