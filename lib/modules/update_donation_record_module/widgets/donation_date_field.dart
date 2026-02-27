// widgets/donation_date_field.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DonationDateField extends StatelessWidget {
  const DonationDateField({
    super.key,
    required this.onSelectDate,
    this.validator,
    this.autovalidateMode = false,
  });

  final Future<void> Function() onSelectDate;
  final FormFieldValidator<DateTime>? validator;
  final bool autovalidateMode;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DonationFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return FormField<DateTime>(
      initialValue: provider.donationDate,
      validator: validator,
      autovalidateMode: autovalidateMode
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      builder: (FormFieldState<DateTime> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donation Date',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : AppColors.textPrimaryLight,
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                await onSelectDate();
                state.didChange(provider.donationDate);
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF1A1F2A) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: state.hasError
                        ? Colors.red
                        : (isDark
                              ? const Color(0xFF2D3748)
                              : const Color(0xFFE6DBDB)),
                    width: state.hasError ? 1.5 : 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          provider.donationDate != null
                              ? _formatDate(provider.donationDate!)
                              : 'Select the date of your donation',
                          style: TextStyle(
                            fontSize: 16,
                            color: provider.donationDate != null
                                ? (isDark
                                      ? Colors.white
                                      : AppColors.textPrimaryLight)
                                : (isDark
                                      ? AppColors.textTertiaryDark
                                      : const Color(0xFF896161)),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.calendar_today,
                        size: 20,
                        color: isDark
                            ? AppColors.textTertiaryDark
                            : const Color(0xFF896161),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                child: Text(
                  state.errorText!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
