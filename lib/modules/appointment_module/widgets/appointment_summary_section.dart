// appointment_summary_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_module/utils/appointment_summary_section_helper.dart';
import 'package:medi_track/modules/appointment_module/widgets/appointment_summary_row.dart';
import 'package:medi_track/modules/appointment_module/widgets/dashed_divider_widget.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';

class AppointmentSummarySection extends StatelessWidget {
  const AppointmentSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentProvider = Provider.of<AppointmentProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Appointment Summary',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111518),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF101a22) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: theme.colorScheme.primary, width: 2),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              // Token Number
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expected Token No.',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: isDark ? Colors.white : const Color(0xFF111518),
                      ),
                    ),
                    Text(
                      appointmentProvider.expectedToken.toString(),
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              // Divider - Using custom dashed line
              DashedDividerWidget(isDark: isDark),
              const SizedBox(height: 12),
              // Appointment Details
              Column(
                children: [
                  AppointmentSummaryRow(
                    label: 'Doctor',
                    value:
                        appointmentProvider.selectedDoctor?['name'] ??
                        'Not selected',
                    isDark: isDark,
                  ),
                  const SizedBox(height: 8),
                  AppointmentSummaryRow(
                    label: 'Department',
                    value: AppointmentSummarySectionHelper.getDepartmentLabel(
                      appointmentProvider.selectedDepartment,
                      appointmentProvider.departments,
                    ),
                    isDark: isDark,
                  ),
                  const SizedBox(height: 8),
                  AppointmentSummaryRow(
                    label: 'Date',
                    value: appointmentProvider.selectedDate != null
                        ? DateFormat(
                            'dd MMM yyyy',
                          ).format(appointmentProvider.selectedDate!)
                        : 'Not selected',
                    isDark: isDark,
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
