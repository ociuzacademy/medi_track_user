// doctor_profile_header.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_urls.dart';

class DoctorProfileHeader extends StatelessWidget {
  final String doctorName;
  final String doctorSpecialization;
  final String doctorImage;
  const DoctorProfileHeader({
    super.key,
    required this.doctorName,
    required this.doctorSpecialization,
    required this.doctorImage,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Doctor Avatar
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  '${AppUrls.baseUrl}$doctorImage',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: GoogleFonts.lexend(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark ? Colors.white : const Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  doctorSpecialization,
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF616161),
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
