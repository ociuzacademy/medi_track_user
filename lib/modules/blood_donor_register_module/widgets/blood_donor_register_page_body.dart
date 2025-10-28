import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/blood_information_card.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/confirmation_checkbox.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/header_card.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/health_eligibility_card.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/success_dialog.dart';

class BloodDonorRegisterPageBody extends StatefulWidget {
  const BloodDonorRegisterPageBody({super.key});

  @override
  State<BloodDonorRegisterPageBody> createState() =>
      _BloodDonorRegisterPageBodyState();
}

class _BloodDonorRegisterPageBodyState
    extends State<BloodDonorRegisterPageBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final donorFormProvider = Provider.of<DonorFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey, // Use the persistent form key
            child: Column(
              children: [
                // Header Card
                const HeaderCard(),

                const SizedBox(height: 8),

                // Pre-filled Data Info
                Text(
                  'Registering as: John Doe',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFF9CA3AF)
                        : const Color(0xFF617589),
                  ),
                ),

                const SizedBox(height: 16),

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
                      // Pass the persistent form key to submitForm
                      donorFormProvider.submitForm(_formKey);
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
        ),

        // Success Dialog
        Selector<DonorFormProvider, bool>(
          selector: (context, provider) => provider.showSuccessDialog,
          builder: (context, showSuccessDialog, child) {
            return showSuccessDialog
                ? SuccessDialog(
                    onClose: () {
                      Provider.of<DonorFormProvider>(
                        context,
                        listen: false,
                      ).closeSuccessDialog(context);
                    },
                  )
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
