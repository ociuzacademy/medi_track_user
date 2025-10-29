import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';

class UpdateDonationRecordHelper {
  static String? validateLocationName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter a location name';
    }
    if (value.trim().length < 2) {
      return 'Location name must be at least 2 characters';
    }
    return null;
  }

  static String? validateUnitsDonated(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter units donated';
    }

    final units = int.tryParse(value.trim());
    if (units == null) {
      return 'Please enter a valid number';
    }

    if (units <= 0) {
      return 'Units must be greater than 0';
    }

    if (units > 10) {
      return 'Units cannot exceed 10';
    }

    return null;
  }

  static Future<void> selectDate(BuildContext context) async {
    final provider = Provider.of<DonationFormProvider>(context, listen: false);
    final initialDate = provider.formData.donationDate ?? DateTime.now();
    final firstDate = DateTime(2000);
    final lastDate = DateTime.now();

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: const Color(0xFFEC1313),
              onPrimary: Colors.white,
              onSurface: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : const Color(0xFF181111),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFFEC1313),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      provider.updateDonationDate(pickedDate);
    }
  }
}
