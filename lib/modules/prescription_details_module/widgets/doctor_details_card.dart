// doctor_details_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2F2C) : Colors.white,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doctor Details',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          _buildDetailRow(
            context: context,
            icon: Icons.medical_information,
            label: 'Name',
            value: 'Dr. Evelyn Reed',
          ),
          const SizedBox(height: 16),
          _buildDetailRow(
            context: context,
            icon: Icons.local_hospital,
            label: 'Hospital',
            value: 'MediTrack General Hospital',
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF05c7a7).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF05c7a7), size: 20),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFF9CA3AF)
                      : const Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: GoogleFonts.lexend(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : const Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
