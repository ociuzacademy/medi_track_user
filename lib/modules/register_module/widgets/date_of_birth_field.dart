import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateOfBirthField extends StatelessWidget {
  final ThemeData theme;
  final DateTime? birthDate;
  final AsyncCallback onSelectingBirthdate;
  const DateOfBirthField({
    super.key,
    required this.theme,
    this.birthDate,
    required this.onSelectingBirthdate,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date of Birth',
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
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: birthDate == null
                        ? 'Date of Birth'
                        : '${birthDate?.day}/${birthDate?.month}/${birthDate?.year}',
                  ),
                  style: GoogleFonts.inter(
                    color: birthDate == null
                        ? const Color(0xFF6B7280)
                        : (isDark ? Colors.white : const Color(0xFF333333)),
                    fontSize: 16,
                  ),
                  onTap: onSelectingBirthdate,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: onSelectingBirthdate,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
