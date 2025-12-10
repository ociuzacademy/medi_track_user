import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_register_module/utils/blood_donor_register_page_body_helper.dart';

import 'package:medi_track/modules/blood_donor_register_module/widgets/blood_information_card.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/confirmation_checkbox.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/header_card.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/health_eligibility_card.dart';

class BloodDonorRegisterPageBody extends StatefulWidget {
  const BloodDonorRegisterPageBody({super.key});

  @override
  State<BloodDonorRegisterPageBody> createState() =>
      _BloodDonorRegisterPageBodyState();
}

class _BloodDonorRegisterPageBodyState
    extends State<BloodDonorRegisterPageBody> {
  late final BloodDonorRegisterPageBodyHelper _bloodDonorRegisterPageBodyHelper;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _bloodDonorRegisterPageBodyHelper = BloodDonorRegisterPageBodyHelper(
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey, // Use the persistent form key
        child: Column(
          children: [
            // Header Card
            const HeaderCard(),

            const SizedBox(height: 8),

            // Blood Information Card
            const BloodInformationSection(),

            const SizedBox(height: 16),

            // Health & Eligibility Card
            const HealthEligibilitySection(),

            const SizedBox(height: 8),

            // Confirmation Checkbox
            const ConfirmationCheckbox(),

            const SizedBox(height: 16),

            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  _bloodDonorRegisterPageBodyHelper.registerDonor(_formKey);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2A75C1),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Register as Donor',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
