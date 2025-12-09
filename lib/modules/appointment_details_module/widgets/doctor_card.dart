// doctor_card.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String department;
  final String doctorImage;
  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.department,
    required this.doctorImage,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2A3B3E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? const Color(0xFF37474F) : AppColors.borderLight,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Doctor Image
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  '${AppUrls.baseUrl}$doctorImage',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 16),

          // Doctor Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: GoogleFonts.lexend(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark ? Colors.white : const Color(0xFF111718),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  department,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF5f868c),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
