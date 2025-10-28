// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentFeedbackDetailRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool showDivider;
  const AppointmentFeedbackDetailRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Container(
          height: subtitle != null ? 72 : 56,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: isDark
                      ? const Color(0xFF2e403d)
                      : const Color(0xFFf5f8f8),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: isDark ? Colors.white : const Color(0xFF111817),
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isDark ? Colors.white : const Color(0xFF111817),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle!,
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFF9CA3AF)
                              : const Color(0xFF6B7280),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        if (showDivider)
          Container(
            height: 1,
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),
      ],
    );
  }
}
