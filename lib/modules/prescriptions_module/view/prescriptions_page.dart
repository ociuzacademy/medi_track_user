// prescriptions_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/prescriptions_module/utils/prescriptions_helper.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/empty_prescriptions_state.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/prescription_search_bar.dart';
import 'package:medi_track/modules/prescriptions_module/widgets/prescriptions_list.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PrescriptionsPage extends StatefulWidget {
  const PrescriptionsPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const PrescriptionsPage());

  @override
  State<PrescriptionsPage> createState() => _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage> {
  late PrescriptionsHelper _prescriptionsHelper;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _prescriptionsHelper = PrescriptionsHelper(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _prescriptionsHelper.prescriptionsInit();
    });
  }

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
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF0f2023)
            : const Color(0xFFf5f8f8),
        elevation: 0,
        foregroundColor: isDark ? Colors.white : AppColors.textPrimaryLight,
      ),
      backgroundColor: isDark
          ? const Color(0xFF0f2023)
          : const Color(0xFFf5f8f8),
      body: BlocBuilder<PrescriptionListCubit, PrescriptionListState>(
        builder: (context, state) {
          switch (state) {
            case PrescriptionListLoading _:
              return const Center(child: CircularProgressIndicator());
            case PrescriptionListError(:final message):
              return CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry: () {
                  _prescriptionsHelper.prescriptionsInit();
                },
              );
            case PrescriptionListSuccess(:final data):
              return Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: PrescriptionSearchBar(controller: _searchController),
                  ),

                  // Prescriptions List or Empty State
                  Expanded(
                    child: data.prescriptions.isNotEmpty
                        ? PrescriptionsList(prescriptions: data.prescriptions)
                        : const EmptyPrescriptionsState(),
                  ),
                ],
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
