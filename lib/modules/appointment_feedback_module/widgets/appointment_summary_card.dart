// appointment_summary_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/cubit/appointment_details/appointment_details_cubit.dart';
import 'package:medi_track/modules/appointment_feedback_module/utils/appointment_summary_card_helper.dart';
import 'package:medi_track/modules/appointment_feedback_module/widgets/appointment_feedback_detail_row.dart';

class AppointmentSummaryCard extends StatefulWidget {
  final int appointmentId;
  const AppointmentSummaryCard({super.key, required this.appointmentId});

  @override
  State<AppointmentSummaryCard> createState() => _AppointmentSummaryCardState();
}

class _AppointmentSummaryCardState extends State<AppointmentSummaryCard> {
  late final AppointmentSummaryCardHelper _appointmentSummaryCardHelper;

  @override
  void initState() {
    super.initState();
    _appointmentSummaryCardHelper = AppointmentSummaryCardHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _appointmentSummaryCardHelper.getAppointmentDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
      builder: (context, state) {
        switch (state) {
          case AppointmentDetailsLoading _:
            return const Center(child: CircularProgressIndicator());
          case AppointmentDetailsError(:final errorMessage):
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    errorMessage,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                      fontSize: Theme.of(
                        context,
                      ).textTheme.titleMedium?.fontSize,
                      fontWeight: Theme.of(
                        context,
                      ).textTheme.titleMedium?.fontWeight,
                      color: isDark ? Colors.white : const Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () =>
                        _appointmentSummaryCardHelper.getAppointmentDetails(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          case AppointmentDetailsSuccess(:final appointmentDetails):
            final DateFormat dateFormat = DateFormat('dd MMM, yyyy');
            return Container(
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF182c29) : Colors.white,
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
                    'Appointment Summary',
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.015,
                      color: isDark ? Colors.white : const Color(0xFF111817),
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppointmentFeedbackDetailRow(
                    icon: Icons.person,
                    title: appointmentDetails.appointment.doctorName,
                    subtitle: appointmentDetails.appointment.departmentName,
                    showDivider: true,
                  ),

                  AppointmentFeedbackDetailRow(
                    icon: Icons.calendar_today,
                    title: dateFormat.format(
                      appointmentDetails.appointment.date,
                    ),
                    showDivider: true,
                  ),
                  AppointmentFeedbackDetailRow(
                    icon: Icons.confirmation_number,
                    title:
                        'Token: ${appointmentDetails.appointment.tokenNumber}',
                  ),
                ],
              ),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
