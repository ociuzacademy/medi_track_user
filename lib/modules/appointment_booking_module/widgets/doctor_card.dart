// available_doctors_section.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_urls.dart';

import 'package:medi_track/modules/appointment_booking_module/models/available_doctors_model.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DoctorCard extends StatelessWidget {
  final AvailableDoctor doctor;
  final bool isSelected;
  final VoidCallback onTap;

  const DoctorCard({
    super.key,
    required this.doctor,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFFBBDEFB).withValues(alpha: isDark ? 0.1 : 0.2)
            : (isDark ? AppColors.backgroundDark : Colors.white),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected
              ? theme.colorScheme.primary
              : (isDark ? AppColors.borderDark : const Color(0xFFdbe1e6)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Doctor Image
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    '${AppUrls.baseUrl}${doctor.image}',
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
                    doctor.name,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isDark ? Colors.white : AppColors.textPrimaryLight,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    doctor.qualification,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: (isDark ? Colors.white : AppColors.textPrimaryLight)
                          .withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            // Book Button
            Container(
              constraints: const BoxConstraints(minWidth: 84),
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isSelected) ...[
                      const Icon(Icons.check_circle, size: 16),
                      const SizedBox(width: 4),
                    ],
                    Text(
                      isSelected ? 'Selected' : 'Book Token',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
