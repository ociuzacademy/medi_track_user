import 'package:flutter/material.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/register_module/providers/register_provider.dart';
import 'package:provider/provider.dart';

class RegisterHelper {
  static void register(GlobalKey<FormState> formKey, BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(
      context,
      listen: false,
    );

    if (formKey.currentState!.validate() && registerProvider.agreeToTerms) {
      registerProvider.register(context);
    } else if (!registerProvider.agreeToTerms) {
      CustomSnackbar.showError(
        context,
        message: 'Please agree to the Terms of Service and Privacy Policy.',
      );
    }
  }
}
