import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailRow extends StatelessWidget {
  const DoctorDetailRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isDark,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: isDark ? const Color(0xFFBDBDBD) : const Color(0xFF757575),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: isDark
                      ? const Color(0xFFBDBDBD)
                      : const Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: isDark
                      ? const Color(0xFFE0E0E0)
                      : const Color(0xFF333333),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
