// appointment_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointment.dart';

class AppointmentCardHeader extends StatelessWidget {
  const AppointmentCardHeader({
    super.key,
    required this.appointment,
    required this.isDark,
  });

  final Appointment appointment;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFF007AFF).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            appointment.icon,
            color: const Color(0xFF007AFF),
            size: 28,
          ),
        ),

        const SizedBox(width: 16),

        // Doctor details and token
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appointment.doctorName,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isDark
                                ? Colors.white
                                : const Color(0xFF111518),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${appointment.specialty}, ${appointment.hospital}',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: isDark
                                ? const Color(0xFF9CA3AF)
                                : const Color(0xFF6B7280),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          appointment.date,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: isDark
                                ? const Color(0xFF9CA3AF)
                                : const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Token number
                  Column(
                    children: [
                      Text(
                        'Token No.',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: isDark
                              ? const Color(0xFF9CA3AF)
                              : const Color(0xFF6B7280),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        appointment.tokenNumber,
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF007AFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
