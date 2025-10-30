// symptoms_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SymptomsCard extends StatelessWidget {
  const SymptomsCard({super.key});

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
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xFF05c7a7).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.health_and_safety,
                  color: const Color(0xFF05c7a7),
                  size: 18,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Symptoms',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : const Color(0xFF111827),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildSymptomItem(
            context: context,
            symptom: 'Fever',
            duration: '3 days',
            severity: 'Moderate',
            isDark: isDark,
          ),
          const SizedBox(height: 8),
          _buildSymptomItem(
            context: context,
            symptom: 'Sore Throat',
            duration: '2 days',
            severity: 'Mild',
            isDark: isDark,
          ),
          const SizedBox(height: 8),
          _buildSymptomItem(
            context: context,
            symptom: 'Headache',
            duration: '1 day',
            severity: 'Mild',
            isDark: isDark,
          ),
          const SizedBox(height: 8),
          _buildSymptomItem(
            context: context,
            symptom: 'Body Aches',
            duration: '2 days',
            severity: 'Moderate',
            isDark: isDark,
          ),
          const SizedBox(height: 12),
          // Additional Notes
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF152522) : const Color(0xFFF8F9FA),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isDark
                    ? const Color(0xFF374151)
                    : const Color(0xFFE5E7EB),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Additional Notes:',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : const Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Patient reports fatigue and loss of appetite. No breathing difficulties or chest pain reported.',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFFD1D5DB)
                        : const Color(0xFF6B7280),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSymptomItem({
    required BuildContext context,
    required String symptom,
    required String duration,
    required String severity,
    required bool isDark,
  }) {
    Color getSeverityColor(String severity) {
      switch (severity.toLowerCase()) {
        case 'mild':
          return const Color(0xFF10B981);
        case 'moderate':
          return const Color(0xFFF59E0B);
        case 'severe':
          return const Color(0xFFEF4444);
        default:
          return const Color(0xFF6B7280);
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF152522) : const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              symptom,
              style: GoogleFonts.lexend(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : const Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1E3A34) : const Color(0xFFECFDF5),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              duration,
              style: GoogleFonts.lexend(
                fontSize: 12,
                color: isDark
                    ? const Color(0xFF34D399)
                    : const Color(0xFF065F46),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: getSeverityColor(
                severity,
              ).withValues(alpha: isDark ? 0.2 : 0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              severity,
              style: GoogleFonts.lexend(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: getSeverityColor(severity),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
