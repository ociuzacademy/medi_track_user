// doctor_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2A3B3E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? const Color(0xFF37474F) : const Color(0xFFE5E7EB),
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
              image: const DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuD3bjgV9iHQGegSOJa3Hm4pJFYCmtUUv3cwS-Ye4EnwXntUd6QuaRlhzRg_tnnBnM4u_bHVW1E5UIzFbRopLiJ1kXBWGfMnKpMGqklnccNDhIpAgdK0KDXzxb-0ajxCxQCda-4LRJUp7I6kGKv_ibLsTwzMjGqJ1Ckx_drxfZAc7minHaVc3VJLOrbOQYH836shJanemyiPnwrfCB2_wbVPaNApfImaiAz3jbQkNNgXaK6elf9cwE47q6ziA1hqa_McWeqCllwxrFvd',
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark ? Colors.white : const Color(0xFF111718),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Cardiologist',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF5f868c),
                  ),
                ),
                Text(
                  'Cardiology Department',
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
