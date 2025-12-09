// medical_sections.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/appointment_details_module/utils/medical_sections_helper.dart';
import 'package:medi_track/modules/appointment_details_module/widgets/medicine_item.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class MedicalSections extends StatefulWidget {
  final int appointmentId;
  const MedicalSections({super.key, required this.appointmentId});

  @override
  State<MedicalSections> createState() => _MedicalSectionsState();
}

class _MedicalSectionsState extends State<MedicalSections> {
  late final MedicalSectionsHelper _medicalSectionsHelper;

  @override
  void initState() {
    super.initState();
    _medicalSectionsHelper = MedicalSectionsHelper(
      context: context,
      appointmentId: widget.appointmentId,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _medicalSectionsHelper.medicalSectionsInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<
      AppointmentPrescriptionCubit,
      AppointmentPrescriptionState
    >(
      builder: (context, state) {
        switch (state) {
          case AppointmentPrescriptionLoading _:
            return const Center(child: CircularProgressIndicator());
          case AppointmentBookingError(message: final message):
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                      fontSize: Theme.of(
                        context,
                      ).textTheme.titleMedium?.fontSize,
                      fontWeight: Theme.of(
                        context,
                      ).textTheme.titleMedium?.fontWeight,
                      color: isDark ? Colors.white : const Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () =>
                        _medicalSectionsHelper.medicalSectionsInit(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          case AppointmentPrescriptionSuccess(:final data):
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Symptoms Section
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Symptoms',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.015,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        data.prescription.symptoms,
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFF9E9E9E)
                              : const Color(0xFF616161),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                // Divider
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 1,
                  color: isDark
                      ? const Color(0xFF37474F)
                      : AppColors.textSecondaryDark,
                ),

                // Prescribed Medicines Section
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prescribed Medicines',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.015,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Medicine List
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final medicine = data.prescription.medicines[index];
                          final times = medicine.timeOfDay
                              .map(
                                (e) =>
                                    e.trim().substring(0, 1).toUpperCase() +
                                    e.trim().substring(1),
                              )
                              .join(', ');
                          return MedicineItem(
                            medicineName: medicine.name,
                            dosage: medicine.dosage,
                            frequency:
                                '${medicine.frequency} ${medicine.frequency == 1 ? 'time' : 'times'} a day ($times)',
                            instructions: medicine.foodInstruction,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 12),
                        itemCount: data.prescription.medicines.length,
                      ),
                    ],
                  ),
                ),

                // Divider
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 1,
                  color: isDark
                      ? const Color(0xFF37474F)
                      : AppColors.textSecondaryDark,
                ),

                // Doctor's Notes Section
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Doctor\'s Notes / Prescription',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.015,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF212121),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        data.prescription.notes,
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFF9E9E9E)
                              : const Color(0xFF616161),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
