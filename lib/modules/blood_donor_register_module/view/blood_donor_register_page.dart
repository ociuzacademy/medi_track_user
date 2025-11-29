import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/blood_donor_register_page_body.dart';

class BloodDonorRegisterPage extends StatelessWidget {
  const BloodDonorRegisterPage({super.key});

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const BloodDonorRegisterPage());

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Become a Blood Donor',
          style: GoogleFonts.lexend(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF1C1B1F),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark ? const Color(0xFF182431) : Colors.white,
        elevation: 1,
      ),
      backgroundColor: isDark
          ? const Color(0xFF101922)
          : const Color(0xFFf6f7f8),
      body: ChangeNotifierProvider(
        create: (context) => DonorFormProvider(),
        child: const BloodDonorRegisterPageBody(),
      ),
    );
  }
}
