// department_dropdown.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/appointment_booking_module/models/departments_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DepartmentDropdown extends StatelessWidget {
  final ThemeData theme;
  final Department? selectedDepartment;
  final Function(Department?) onDepartmentSelected;

  const DepartmentDropdown({
    super.key,
    required this.theme,
    this.selectedDepartment,
    required this.onDepartmentSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Department',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? AppColors.backgroundDark : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDark ? AppColors.borderDark : const Color(0xFFdbe1e6),
            ),
          ),
          child: BlocBuilder<DepartmentsCubit, DepartmentsState>(
            builder: (context, state) {
              switch (state) {
                case DepartmentsInitial():
                case DepartmentsLoading():
                  return const Center(
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                case DepartmentsSuccess(:final departments):
                  return Stack(
                    children: [
                      DropdownButtonFormField<Department>(
                        isExpanded: true,
                        value: selectedDepartment,
                        items: departments.departments.map((department) {
                          return DropdownMenuItem<Department>(
                            value: department,
                            child: Text(
                              department.department,
                              style: GoogleFonts.inter(
                                color: isDark
                                    ? Colors.white
                                    : AppColors.textPrimaryLight,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
                          color: isDark
                              ? Colors.white
                              : AppColors.textPrimaryLight,
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
                  );
                case DepartmentsError(:final errorMessage):
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Error: $errorMessage',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ],
    );
  }
}
