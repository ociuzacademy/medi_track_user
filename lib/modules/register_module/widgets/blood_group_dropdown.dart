// blood_group_dropdown.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/typedefs/select_string.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class BloodGroupDropdown extends StatelessWidget {
  final ThemeData theme;
  final String? bloodGroup;
  final SelectString onSelectingBloodGroup;

  const BloodGroupDropdown({
    super.key,
    required this.theme,
    this.bloodGroup,
    this.onSelectingBloodGroup,
  });

  static const List<String> _bloodGroups = [
    'Select',
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Blood Group',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textSecondaryLight,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1a2c3a) : const Color(0xFFEFEFEF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              DropdownButtonFormField<String>(
                initialValue: bloodGroup,
                items: _bloodGroups.map((String bloodGroup) {
                  return DropdownMenuItem<String>(
                    value: bloodGroup == 'Select' ? null : bloodGroup,
                    child: Text(
                      bloodGroup,
                      style: GoogleFonts.inter(
                        color: bloodGroup == 'Select'
                            ? AppColors.textTertiaryLight
                            : (isDark ? Colors.white : AppColors.textSecondaryLight),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: onSelectingBloodGroup,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                icon: const SizedBox(),
              ),
              Positioned(
                right: 16,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.bloodtype_outlined,
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
