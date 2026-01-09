// bottom_action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';
import 'package:medi_track/modules/prescription_details_module/utils/bottom_action_buttons_helper.dart';

class BottomActionButtons extends StatefulWidget {
  final PrescriptionDetailsModel prescriptionData;

  const BottomActionButtons({super.key, required this.prescriptionData});

  @override
  State<BottomActionButtons> createState() => _BottomActionButtonsState();
}

class _BottomActionButtonsState extends State<BottomActionButtons> {
  late final BottomActionButtonsHelper _bottomActionButtonsHelper;

  @override
  void initState() {
    super.initState();
    _bottomActionButtonsHelper = BottomActionButtonsHelper(
      context: context,
      prescriptionData: widget.prescriptionData,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocConsumer<SendPrescriptionBloc, SendPrescriptionState>(
      listener: (context, state) {
        switch (state) {
          case SendPrescriptionLoading():
            OverlayLoader.show(context, message: 'Generating PDF...');
            break;
          case SendPrescriptionSuccess():
            OverlayLoader.hide();
            CustomSnackbar.showSuccess(
              context,
              message: 'PDF generated successfully',
            );
            break;
          case SendPrescriptionError(:final message):
            OverlayLoader.hide();
            CustomSnackbar.showError(context, message: 'Error: $message');
            break;
          default:
            OverlayLoader.hide();
            break;
        }
      },
      builder: (context, state) {
        final isLoading = switch (state) {
          SendPrescriptionLoading() => true,
          _ => false,
        };

        return Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xFF1A2F2C).withValues(alpha: 0.9)
                  : Colors.white.withValues(alpha: 0.9),
              border: Border(
                top: BorderSide(
                  color: isDark ? AppColors.borderDark : AppColors.borderLight,
                ),
              ),
            ),
            child: Column(
              children: [
                // Download Prescription Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : _bottomActionButtonsHelper.generatePdf,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF05c7a7),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.picture_as_pdf, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Download Prescription',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),

                const SizedBox(height: 12),

                // Back to Prescriptions Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: isDark
                          ? AppColors.textTertiaryDark
                          : AppColors.textTertiaryLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Back to Prescriptions',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
