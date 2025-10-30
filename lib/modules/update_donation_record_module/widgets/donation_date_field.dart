// widgets/donation_date_field.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/update_donation_record_module/utils/update_donation_record_helper.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';

class DonationDateField extends StatelessWidget {
  const DonationDateField({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DonationFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final formData = provider.formData;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Donation Date',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF181111),
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () => UpdateDonationRecordHelper.selectDate(context),
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1A1F2A) : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isDark
                    ? const Color(0xFF2D3748)
                    : const Color(0xFFE6DBDB),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      formData.donationDate != null
                          ? _formatDate(formData.donationDate!)
                          : 'Select the date of your donation',
                      style: TextStyle(
                        fontSize: 16,
                        color: formData.donationDate != null
                            ? (isDark ? Colors.white : const Color(0xFF181111))
                            : (isDark
                                  ? const Color(0xFF9CA3AF)
                                  : const Color(0xFF896161)),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.calendar_today,
                    size: 20,
                    color: isDark
                        ? const Color(0xFF9CA3AF)
                        : const Color(0xFF896161),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
