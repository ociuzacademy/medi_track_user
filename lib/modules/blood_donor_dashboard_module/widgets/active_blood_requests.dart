import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_requests_module/view/blood_requests_page.dart';

class ActiveBloodRequests extends StatelessWidget {
  const ActiveBloodRequests({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active Blood Requests',
                style: GoogleFonts.lexend(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF111418),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, BloodRequestsPage.route());
                },
                child: Text(
                  'See All',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF137fec),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Request Card
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1E293B) : Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
              border: isDark
                  ? Border.all(color: Colors.white.withValues(alpha: 0.1))
                  : null,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Urgent Badge
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: isDark
                            ? const Color(0xFF991B1B)
                            : const Color(0xFFFEE2E2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'URGENT',
                        style: GoogleFonts.lexend(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isDark
                              ? const Color(0xFFF87171)
                              : const Color(0xFFDC2626),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // Blood Type and Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.bloodtype,
                          color: Color(0xFFEF4444),
                          size: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'O- Negative',
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isDark
                                ? Colors.white
                                : const Color(0xFF111418),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
