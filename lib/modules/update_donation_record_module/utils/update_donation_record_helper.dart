// utils/update_donation_record_helper.dart
import 'package:flutter/material.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/update_donation_record_module/classes/update_donation_record_data.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class UpdateDonationRecordHelper {
  const UpdateDonationRecordHelper();

  // Remove context from constructor and pass it as parameter
  Future<void> selectDate(BuildContext context) async {
    final provider = Provider.of<DonationFormProvider>(context, listen: false);
    final initialDate = provider.donationDate ?? DateTime.now();
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
              primary: const Color(0xFF2196F3),
              onPrimary: Colors.white,
              onSurface: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : AppColors.textPrimaryLight,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF2196F3),
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

  // Also pass context as parameter here
  void updateDonationRecord(
    BuildContext context,
    UpdateDonationRecordData? data,
  ) {
    FocusScope.of(context).unfocus();
    if (data == null) {
      CustomSnackbar.showError(context, message: 'Please fill all the fields');
      return;
    }
    final AddDonationRecordBloc bloc = context.read<AddDonationRecordBloc>();
    bloc.add(AddDonationRecordEvent.addDonationRecord(data));
  }
}
