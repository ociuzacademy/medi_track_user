import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/doctor_detail_row.dart';

class DoctorInfoCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String appointmentDate;
  final String clinicLocation;
  final String imageUrl;

  const DoctorInfoCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.appointmentDate,
    required this.clinicLocation,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2A2D) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Doctor Profile
          Row(
            children: [
              // Profile Image
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDk-5FSbAVLBsU2AUEqAiavX4-itCwWKZiCGmgEvmSM-t7hddkjUK0IcmHiYkYarvEgsiNu1BuF7J3qw2wCsiVH3Gzsp0Uu96TqfxbmICpy_icIht_W8T-DI1xdZDYNMaY0mMrsmNrrNDxbHbvQlW-nvbehZ5OJ5dy_diJ43pmd715HlD3ExiHpMhxB2nXAvbK-4IxKHC-irnlpwG5a-atp6TwEyCDUu4HweghiRly8wrUWmAaIyx0u7TqwEM0wnxBOS9RNOywKyfaV',
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isDark
                            ? const Color(0xFFE0E0E0)
                            : const Color(0xFF333333),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      specialty,
                      style: GoogleFonts.lexend(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: isDark
                            ? const Color(0xFFBDBDBD)
                            : const Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Divider
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 1,
            color: isDark ? const Color(0xFF374151) : const Color(0xFFE5E7EB),
          ),

          // Appointment Details
          Column(
            children: [
              // Appointment Date
              DoctorDetailRow(
                icon: Icons.calendar_today,
                title: 'Appointment',
                subtitle: appointmentDate,
                isDark: isDark,
              ),
              const SizedBox(height: 16),
              // Clinic Location
              DoctorDetailRow(
                icon: Icons.location_on,
                title: 'Clinic',
                subtitle: clinicLocation,
                isDark: isDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
