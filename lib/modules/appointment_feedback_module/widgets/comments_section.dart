// feedback_form.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({
    super.key,
    required this.commentsController,
    required this.context,
  });

  final TextEditingController commentsController;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Additional Comments / Feedback',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF111817),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF2e403d) : const Color(0xFFf5f8f8),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isDark ? const Color(0xFF4B5563) : const Color(0xFFD1D5DB),
            ),
          ),
          child: TextField(
            controller: commentsController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Share your experience...',
              hintStyle: GoogleFonts.lexend(
                fontSize: 16,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
            ),
            style: GoogleFonts.lexend(
              fontSize: 16,
              color: isDark ? Colors.white : const Color(0xFF111817),
            ),
          ),
        ),
      ],
    );
  }
}
