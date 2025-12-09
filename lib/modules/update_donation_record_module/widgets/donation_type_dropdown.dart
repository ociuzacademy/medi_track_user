// widgets/donation_type_dropdown.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/update_donation_record_module/models/donation_form_data.dart';
import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DonationTypeDropdown extends StatelessWidget {
  const DonationTypeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DonationFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final currentType = provider.formData.donationType;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Donation Type',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1A1F2A) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDark ? const Color(0xFF2D3748) : const Color(0xFFE6DBDB),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<DonationType>(
                value: currentType,
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: isDark
                      ? AppColors.textTertiaryDark
                      : const Color(0xFF896161),
                ),
                style: TextStyle(
                  fontSize: 16,
                  color: isDark ? Colors.white : AppColors.textPrimaryLight,
                ),
                dropdownColor: isDark ? const Color(0xFF1A1F2A) : Colors.white,
                onChanged: (DonationType? newValue) {
                  if (newValue != null) {
                    provider.updateDonationType(newValue);
                  }
                },
                items: DonationType.values.map((DonationType type) {
                  return DropdownMenuItem<DonationType>(
                    value: type,
                    child: Text(type.displayName),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
