import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:provider/provider.dart';

class BloodInformationCardHelper {
  static void showLastDonationDatePicker(BuildContext context) {
    final donorFormProvider = Provider.of<DonorFormProvider>(
      context,
      listen: false,
    );

    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((selectedDate) {
      if (selectedDate != null) {
        final formattedDate =
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        donorFormProvider.setLastDonationDate(formattedDate);
      }
    });
  }
}
