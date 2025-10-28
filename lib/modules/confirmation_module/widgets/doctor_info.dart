// appointment_details_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Doctor Avatar
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuCj5Pw6gLKEJkgBjb0usZdLrlO144HvQpgai1BgLkgdu6kZgrgnAGGsCQP1i3v-UaSEGSrge4h8AuOIG5-jCwFM0GPup77BS22NmROwpHE9uhSDFGzySOv9RGxdLe_bdprtW5nE5o_YHstk1Y7kN9SS-kLiBFyXFKrHjJmgLmqHl2C8HGo6lhkQUjH_mGilcV23LF3vXNpV82IqbWqnsx7NtooYx9FX2cshEfMx3zOQqPmzOFkOYZt4MPF0y5kiKpiYHTmq0DSIVc36',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(width: 16),

        // Doctor Details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Evelyn Reed',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF111518),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Cardiology',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
