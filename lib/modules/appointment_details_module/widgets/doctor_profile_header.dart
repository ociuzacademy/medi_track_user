// doctor_profile_header.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorProfileHeader extends StatelessWidget {
  const DoctorProfileHeader({super.key});

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
              image: const DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuDliUNrm_XNxPRjrZRRl1mcXDZrVD8fgr0DauUvDK2HV_OKzyhOLvXw4xUlRCjv1MNKSlU4pVbcpEZQunghZS0ZQSXSANKIX2Ytl4OG7kY_vc4KzaZuVZ6BAsI1xHYIs2FpQQdxlm8k--5Wx01yhjh69nL_xbv4mskSMscZtb5yBGEj3lkK4ClIqDVt49Gg561BET2kedi4zwgw8sFcpfOzbIYc-u8tcY_z2uSjer0fKU6wAkLYmw22l5cRE8D6i1tcttEMdzJY0DVn',
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
                  'Dr. Evelyn Reed',
                  style: GoogleFonts.lexend(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark ? Colors.white : const Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Cardiologist',
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
