// appointment_form_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_booking_module/utils/appointment_form_section_helper.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/department_dropdown.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/date_picker_field.dart';

class AppointmentFormSection extends StatelessWidget {
  const AppointmentFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentBookingProvider = Provider.of<AppointmentBookingProvider>(
      context,
    );
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: DepartmentDropdown(
              theme: theme,
              selectedDepartment: appointmentBookingProvider.selectedDepartment,
              onDepartmentSelected: (value) {
                appointmentBookingProvider.setSelectedDepartment(value);
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: DatePickerField(
              theme: theme,
              selectedDate: appointmentBookingProvider.selectedDate,
              onDateSelected: () =>
                  AppointmentFormSectionHelper.selectDate(context),
            ),
          ),
        ],
      ),
    );
  }
}
