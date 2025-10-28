// rescheduled_doctor_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RescheduledDoctorCard extends StatelessWidget {
  const RescheduledDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
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
              image: const DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuDAAM6NWhnuiImnfsG6pASpuBMqqstFXH62IimJ_eTDsXg9YVMK4imXHs3PdW_7Y-X5CAnSnkcTTxDpK7gESv5ReSm5cVHUxYQd4Bhmve-2UT-SnQ2y0ow2vXGVtb9rrwUvUTAMpKwbC1WkbVOxbOt9Frz0ePDNIETnCBwHZ7aH8iu_SAqUF8g50OZALKq0XBfbDb-AlKgQz1rJvJdpUcPMR4WCEklLkclWz7T45rSIKpfBLz8rb0far3WbSiHuSuATMnjc544IGLLg',
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
                  'Dr. Evelyn Reed',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isDark ? Colors.white : const Color(0xFF111718),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  'Cardiology, Heart & Vascular Institute',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFFCCCCCC)
                        : const Color(0xFF5f868c),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
