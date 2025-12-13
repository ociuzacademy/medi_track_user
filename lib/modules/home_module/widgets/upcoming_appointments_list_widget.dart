// [file name]: home_content.dart
// [file content begin]

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/home_module/models/upcoming_appointments_model.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointment_card.dart';
import 'package:medi_track/modules/user_appointments_module/view/user_appointments_page.dart';

class UpcomingAppointmentsListWidget extends StatelessWidget {
  const UpcomingAppointmentsListWidget({super.key, required this.data});

  final UpcomingAppointmentsModel data;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.85;

    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, index) => SizedBox(
              width: cardWidth,
              child: UpcomingAppointmentCard(
                bookingId: data.appointments[index].id,
                doctorName: data.appointments[index].doctorName,
                departmentName: data.appointments[index].departmentName,
                appointmentDate: data.appointments[index].date,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: data.appointments.length > 3
                ? 3
                : data.appointments.length,
          ),
        ),
        if (data.appointments.length > 3)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, UserAppointmentsPage.route());
                },
                child: Text(
                  'View all ${data.count} appointments',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColors.primaryAlt,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
