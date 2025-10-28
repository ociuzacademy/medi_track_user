import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/typedefs/select_string.dart';

class GenderDropdown extends StatelessWidget {
  final ThemeData theme;
  final String? gender;
  final SelectString onSelectingGender;
  const GenderDropdown({
    super.key,
    required this.theme,
    this.gender,
    this.onSelectingGender,
  });

  static const List<String> _genders = [
    'Select Gender',
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              DropdownButtonFormField<String>(
                value: gender,
                items: _genders.map((String gender) {
                  return DropdownMenuItem<String>(
                    value: gender == 'Select Gender' ? null : gender,
                    child: Text(
                      gender,
                      style: GoogleFonts.inter(
                        color: gender == 'Select Gender'
                            ? const Color(0xFF6B7280)
                            : (isDark ? Colors.white : const Color(0xFF333333)),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: onSelectingGender,
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
