import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/doctor_info_card.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/feedback_details_card.dart';

class FeedbackDetailsPage extends StatelessWidget {
  const FeedbackDetailsPage({super.key});

  static route() => MaterialPageRoute(builder: (_) => FeedbackDetailsPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Feedback Details',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF101f22)
            : const Color(0xFFF5F7FA),
        elevation: 1,
      ),
      backgroundColor: isDark
          ? const Color(0xFF101f22)
          : const Color(0xFFF5F7FA),
      body: Column(
        children: [
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Doctor Info Card
                  DoctorInfoCard(
                    doctorName: 'Dr. Evelyn Reed',
                    specialty: 'Cardiology',
                    appointmentDate: 'October 26, 2023 at 10:30 AM',
                    clinicLocation: 'Cardiology Center, Main Hospital',
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuDk-5FSbAVLBsU2AUEqAiavX4-itCwWKZiCGmgEvmSM-t7hddkjUK0IcmHiYkYarvEgsiNu1BuF7J3qw2wCsiVH3Gzsp0Uu96TqfxbmICpy_icIht_W8T-DI1xdZDYNMaY0mMrsmNrrNDxbHbvQlW-nvbehZ5OJ5dy_diJ43pmd715HlD3ExiHpMhxB2nXAvbK-4IxKHC-irnlpwG5a-atp6TwEyCDUu4HweghiRly8wrUWmAaIyx0u7TqwEM0wnxBOS9RNOywKyfaV',
                  ),

                  const SizedBox(height: 16),

                  // Feedback Details Card
                  const FeedbackDetailsCard(
                    overallRating: 4,
                    doctorInteraction: 100,
                    waitingExperience: 60,
                    submissionDate: 'Oct 26, 2023',
                    feedbackText:
                        'Dr. Reed was very attentive and explained everything clearly. The waiting time was a bit longer than expected, but the overall experience was positive. The clinic staff were also very helpful and professional.',
                  ),
                ],
              ),
            ),
          ),

          // Bottom Button
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF101f22) : const Color(0xFFF5F7FA),
              border: Border(
                top: BorderSide(
                  color: isDark
                      ? const Color(0xFF1A2A2D)
                      : const Color(0xFFE0E0E0),
                  width: 1,
                ),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                // Handle edit feedback action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4A90E2),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                'Edit Feedback',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
