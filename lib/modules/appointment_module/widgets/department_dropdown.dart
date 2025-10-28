// department_dropdown.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';

class DepartmentDropdown extends StatelessWidget {
  final ThemeData theme;
  final String? selectedDepartment;
  final Function(String?) onDepartmentSelected;

  const DepartmentDropdown({
    super.key,
    required this.theme,
    this.selectedDepartment,
    required this.onDepartmentSelected,
  });

  @override
  Widget build(BuildContext context) {
    final appointmentProvider = Provider.of<AppointmentProvider>(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Department',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF111518),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF101a22) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDark ? const Color(0xFF374151) : const Color(0xFFdbe1e6),
            ),
          ),
          child: Stack(
            children: [
              DropdownButtonFormField<String>(
                value: selectedDepartment,
                items: appointmentProvider.departments.map((department) {
                  return DropdownMenuItem<String>(
                    value: department['value'],
                    child: Text(
                      department['label']!,
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white : const Color(0xFF111518),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: onDepartmentSelected,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                icon: const SizedBox(),
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: isDark ? Colors.white : const Color(0xFF111518),
                ),
              ),
              Positioned(
                right: 16,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
