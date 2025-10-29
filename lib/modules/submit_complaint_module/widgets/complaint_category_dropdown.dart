// complaint_category_dropdown.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplaintCategoryDropdown extends StatelessWidget {
  final String? selectedCategory;
  final ValueChanged<String?> onCategoryChanged;

  const ComplaintCategoryDropdown({
    super.key,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Complaint Category',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF2A1A1A) : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isDark ? const Color(0xFF443333) : const Color(0xFFE0E0E0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              // Icon
              const Positioned(
                left: 16,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.report_problem,
                  color: Color(0xFF00796B),
                  size: 24,
                ),
              ),
              // Dropdown
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 16),
                child: DropdownButtonFormField<String>(
                  value: selectedCategory,
                  onChanged: onCategoryChanged,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: isDark
                        ? const Color(0xFFE0E0E0)
                        : const Color(0xFF333333),
                  ),
                  dropdownColor: isDark
                      ? const Color(0xFF2A1A1A)
                      : Colors.white,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: isDark
                        ? const Color(0xFFA08F8F)
                        : const Color(0xFF886364),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: null,
                      child: Text('Select a category'),
                    ),
                    DropdownMenuItem(
                      value: 'billing',
                      child: Text('Billing Issue'),
                    ),
                    DropdownMenuItem(
                      value: 'facility',
                      child: Text('Facility Cleanliness'),
                    ),
                    DropdownMenuItem(
                      value: 'staff',
                      child: Text('Staff Behavior'),
                    ),
                    DropdownMenuItem(value: 'other', child: Text('Other')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
