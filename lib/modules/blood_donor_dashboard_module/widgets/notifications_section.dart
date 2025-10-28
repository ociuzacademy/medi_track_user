import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/view/blood_request_notifications_page.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notifications',
                style: GoogleFonts.lexend(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF111418),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    BloodRequestNotificationsPage.route(),
                  );
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

        // Notification Card
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: isDark
                        ? const Color(0xFF991B1B)
                        : const Color(0xFFFEE2E2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.campaign,
                    color: isDark
                        ? const Color(0xFFF87171)
                        : const Color(0xFFDC2626),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                // Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Urgent need for your blood type (A+)',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF111418),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'An urgent request has been made. Your donation can save a life.',
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFF9CA3AF)
                              : const Color(0xFF6B7280),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '2 hours ago',
                        style: GoogleFonts.lexend(
                          fontSize: 12,
                          color: isDark
                              ? const Color(0xFF6B7280)
                              : const Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
