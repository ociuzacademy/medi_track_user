import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/doctor_detail_row.dart';

class DoctorInfoCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final DateTime appointmentDate;
  final String imageUrl;

  const DoctorInfoCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.appointmentDate,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('MMMM d, yyyy');

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDarkAlt : AppColors.cardLight,
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
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
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
                        color: AppColors.textSecondary(context),
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
                        color: AppColors.textMuted(context),
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
            color: AppColors.divider(context),
          ),

          // Appointment Details
          DoctorDetailRow(
            icon: Icons.calendar_today,
            title: 'Appointment',
            subtitle: dateFormat.format(appointmentDate),
            isDark: isDark,
          ),
        ],
      ),
    );
  }
}
