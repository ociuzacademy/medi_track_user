// prescriptions_page.dart

import 'package:flutter/material.dart';
import 'package:medi_track/modules/prescriptions_module/models/prescription_list_model.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/prescription_card.dart';

class PrescriptionsList extends StatelessWidget {
  const PrescriptionsList({super.key, required this.prescriptions});

  final List<Prescription> prescriptions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: prescriptions.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: PrescriptionCard(prescription: prescriptions[index]),
        );
      },
    );
  }
}
