// pages/update_donation_record_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/update_donation_record_module/utils/update_donation_record_helper.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/custom_text_form_field.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/donation_date_field.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/donation_type_dropdown.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/success_snackbar.dart';

class UpdateDonationRecordPage extends StatefulWidget {
  const UpdateDonationRecordPage({super.key});

  @override
  State<UpdateDonationRecordPage> createState() =>
      _UpdateDonationRecordPageState();

  static route() =>
      MaterialPageRoute(builder: (_) => const UpdateDonationRecordPage());
}

class _UpdateDonationRecordPageState extends State<UpdateDonationRecordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return ChangeNotifierProvider(
      create: (context) => DonationFormProvider(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Update Donation Record',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: isDark
              ? const Color(0xFF221010)
              : const Color(0xFFF8F6F6),
          elevation: 0,
        ),
        backgroundColor: isDark
            ? const Color(0xFF221010)
            : const Color(0xFFF8F6F6),
        body: Consumer<DonationFormProvider>(
          builder: (context, provider, child) {
            return Stack(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.size.width * 0.04,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Instructional text
                              Text(
                                'Record your recent blood donation made outside this hospital.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: isDark
                                      ? const Color(0xFF9CA3AF)
                                      : const Color(0xFF757575),
                                ),
                              ),
                              const SizedBox(height: 24),
                              // Form fields
                              Column(
                                children: [
                                  const DonationDateField(),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    label: 'Location Name',
                                    hintText:
                                        'Enter hospital or blood bank name',
                                    onChanged: (value) =>
                                        provider.updateLocationName(value),
                                    value: provider.formData.locationName,
                                    validator: UpdateDonationRecordHelper
                                        .validateLocationName,
                                    autovalidateMode: true,
                                  ),
                                  const SizedBox(height: 20),
                                  const DonationTypeDropdown(),
                                  const SizedBox(height: 20),
                                  CustomTextFormField(
                                    label: 'Units Donated',
                                    hintText: 'e.g., 1',
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) =>
                                        provider.updateUnitsDonated(value),
                                    value: provider.formData.unitsDonated,
                                    validator: UpdateDonationRecordHelper
                                        .validateUnitsDonated,
                                    autovalidateMode: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Action buttons
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.size.width * 0.04,
                          vertical: 16,
                        ),
                        color: isDark
                            ? const Color(0xFF221010)
                            : const Color(0xFFF8F6F6),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed:
                                    provider.formData.isValid &&
                                        !provider.isSubmitting
                                    ? () {
                                        if (_formKey.currentState!.validate()) {
                                          provider.submitForm(context);
                                        }
                                      }
                                    : null,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEC1313),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 0,
                                ),
                                child: provider.isSubmitting
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.white,
                                              ),
                                        ),
                                      )
                                    : const Text(
                                        'Submit Update',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: OutlinedButton(
                                onPressed: () {
                                  provider.resetForm();
                                  Navigator.of(context).pop();
                                },
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xFFEC1313),
                                  side: const BorderSide(
                                    color: Color(0xFFEC1313),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Success snackbar
                if (provider.showSuccess)
                  Positioned(
                    bottom: 120,
                    left: mediaQuery.size.width * 0.1,
                    right: mediaQuery.size.width * 0.1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SuccessSnackbar(onClose: provider.hideSuccess),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
