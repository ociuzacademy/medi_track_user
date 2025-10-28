// profile_header.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2A2D) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Profile Image with Edit Button
          Stack(
            children: [
              Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuBYSRmPxc4bDK4Xi9IXHBJJA_F6lRaSdHa-i6vZQ7T4p1QqvdnIzppojMXZkNJrGzE7mRs1lWJdnWJavrH7f8WBAwmx69nBFyXD_DZEWOl5oV7psfedP6eHvjRtissrB6Lhl-tZhVHoLqG7K_rmRoi2oX8bML_dmt3ext2xE8aAVP0H_NKK2XrVaqqDG1ot7Rq3RKvdIzHDnirJswtw13HXs58QKGtmeX57UMeDmPLq7MBE2fd6hPgw9w5Xi73fJ9-45bh7joGdtRVF',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A90E2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white, size: 16),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      // Handle edit profile picture
                    },
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Name and Patient ID
          Column(
            children: [
              Text(
                'Jane Doe',
                style: GoogleFonts.lexend(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark
                      ? const Color(0xFFE0E0E0)
                      : const Color(0xFF333333),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'Patient ID: MT-123456',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: isDark
                      ? const Color(0xFF94A3B8)
                      : const Color(0xFF64748B),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
