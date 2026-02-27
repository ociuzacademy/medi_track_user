// pages/update_donation_record_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';
import 'package:medi_track/modules/update_donation_record_module/utils/update_donation_record_helper.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/update_donation_record_module/providers/donation_form_provider.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/custom_text_form_field.dart';
import 'package:medi_track/modules/update_donation_record_module/widgets/donation_date_field.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class UpdateDonationRecordPage extends StatefulWidget {
  const UpdateDonationRecordPage({super.key});

  @override
  State<UpdateDonationRecordPage> createState() =>
      _UpdateDonationRecordPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const UpdateDonationRecordPage());
}

class _UpdateDonationRecordPageState extends State<UpdateDonationRecordPage> {
  final _updateDonationRecordHelper = const UpdateDonationRecordHelper();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
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
            ? const Color(0xFF0F1A2A)
            : const Color(0xFFF0F4F8),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF0F1A2A)
          : const Color(0xFFF0F4F8),
      body: ChangeNotifierProvider(
        create: (context) => DonationFormProvider(),
        child: BlocListener<AddDonationRecordBloc, AddDonationRecordState>(
          listener: (context, state) {
            switch (state) {
              case AddDonationRecordLoading _:
                OverlayLoader.show(
                  context,
                  message: 'Adding donation record...',
                );
                break;
              case AddDonationRecordSuccess(:final response):
                OverlayLoader.hide();
                CustomSnackbar.showSuccess(context, message: response.message);
                Navigator.pushAndRemoveUntil(
                  context,
                  HomePage.route(),
                  (route) => false,
                );
                break;
              case AddDonationRecordError(:final message):
                OverlayLoader.hide();
                CustomSnackbar.showError(context, message: message);
                break;
              default:
                break;
            }
          },
          child: Consumer<DonationFormProvider>(
            builder: (context, provider, child) {
              return Form(
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
                                    ? AppColors.textTertiaryDark
                                    : AppColors.textMutedLight,
                              ),
                            ),
                            const SizedBox(height: 24),
                            // Form fields
                            Column(
                              children: [
                                DonationDateField(
                                  onSelectDate: () =>
                                      _updateDonationRecordHelper.selectDate(
                                        context,
                                      ),
                                  validator: provider.validateDonationDate,
                                  autovalidateMode: true,
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  label: 'Location Name',
                                  hintText: 'Enter hospital or blood bank name',
                                  controller: provider.locationController,
                                  validator: provider.validateLocationName,
                                  autovalidateMode: true,
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  label: 'Units Donated',
                                  hintText: 'e.g., 1',
                                  keyboardType: TextInputType.number,
                                  controller: provider.unitsController,
                                  validator: provider.validateUnitsDonated,
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
                          ? const Color(0xFF0F1A2A)
                          : const Color(0xFFF0F4F8),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _updateDonationRecordHelper
                                      .updateDonationRecord(
                                        context,
                                        provider.toUpdateDonationRecordData(),
                                      );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2196F3),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
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
                                foregroundColor: const Color(0xFF2196F3),
                                side: const BorderSide(
                                  color: Color(0xFF2196F3),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
