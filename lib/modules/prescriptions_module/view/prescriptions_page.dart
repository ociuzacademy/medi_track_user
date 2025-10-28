// prescriptions_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescriptions_module/models/prescription_data.dart';

import 'package:medi_track/modules/prescriptions_module/widgets/empty_prescriptions_state.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/prescription_search_bar.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/prescriptions_list.dart';

class PrescriptionsPage extends StatefulWidget {
  const PrescriptionsPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const PrescriptionsPage());

  @override
  State<PrescriptionsPage> createState() => _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage> {
  final TextEditingController _searchController = TextEditingController();
  static const List<PrescriptionData> _prescriptions = [
    PrescriptionData(
      doctorName: 'Dr. Evelyn Reed',
      specialty: 'Cardiologist',
      date: '15/08/2023',
      token: '#A135',
      description:
          'Prescription includes Metformin 500mg and advises regular blood sugar monitoring...',
      status: 'Completed',
    ),
    PrescriptionData(
      doctorName: 'Dr. Ben Carter',
      specialty: 'General Physician',
      date: '02/07/2023',
      token: '#B241',
      description:
          'Patient advised to take Amoxicillin 250mg for 5 days and rest...',
      status: 'Completed',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'My Prescriptions',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : const Color(0xFF111827),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : const Color(0xFF111827),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: isDark ? const Color(0xFFD1D5DB) : const Color(0xFF6B7280),
            ),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: PrescriptionSearchBar(controller: _searchController),
          ),

          // Prescriptions List or Empty State
          Expanded(
            child: _prescriptions.isNotEmpty
                ? PrescriptionsList(prescriptions: _prescriptions)
                : const EmptyPrescriptionsState(),
          ),
        ],
      ),
    );
  }
}
