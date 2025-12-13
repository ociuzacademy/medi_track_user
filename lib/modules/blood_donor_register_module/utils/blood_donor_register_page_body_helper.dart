import 'package:flutter/material.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:provider/provider.dart';

class BloodDonorRegisterPageBodyHelper {
  final BuildContext context;

  const BloodDonorRegisterPageBodyHelper({required this.context});

  void getUserProfile() {
    final UserProfileCubit userProfileCubit = context.read<UserProfileCubit>();
    userProfileCubit.getUserProfile();
  }

  void registerDonor(GlobalKey<FormState> formKey) {
    final donorFormProvider = Provider.of<DonorFormProvider>(
      context,
      listen: false,
    );

    final donorData = donorFormProvider.submitForm(formKey);

    if (donorData != null) {
      FocusScope.of(context).unfocus();
      final RegisterDonorBloc registerDonorBloc = context
          .read<RegisterDonorBloc>();
      registerDonorBloc.add(
        RegisterDonorEvent.registerDonor(bloodDonorRegisterData: donorData),
      );
    } else {
      CustomSnackbar.showError(
        context,
        message: 'Please fill all the necessory fields',
      );
    }
  }
}
