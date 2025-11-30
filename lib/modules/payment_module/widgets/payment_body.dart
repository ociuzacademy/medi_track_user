// payment_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/payment_module/providers/payment_provider.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_details_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_footer_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_method_section.dart';
import 'package:medi_track/modules/payment_module/widgets/payment_summary_section.dart';
import 'package:provider/provider.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentProvider>(
      builder: (context, paymentProvider, child) {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Payment Summary
                    BlocBuilder<
                      AppointmentDetailsCubit,
                      AppointmentDetailsState
                    >(
                      builder: (context, state) {
                        switch (state) {
                          case AppointmentDetailsLoading _:
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          case AppointmentDetailsError(:final errorMessage):
                            return Center(child: Text(errorMessage));
                          case AppointmentDetailsSuccess(
                            :final appointmentDetails,
                          ):
                            final String appointmentDetailsString =
                                '${appointmentDetails.appointment.departmentName} Section';
                            return PaymentSummarySection(
                              appointmentDetails: appointmentDetailsString,
                            );
                          default:
                            return const SizedBox.shrink();
                        }
                      },
                    ),

                    const SizedBox(height: 24),

                    // Payment Method
                    const PaymentMethodSection(),

                    const SizedBox(height: 24),

                    // Payment Details (Card or UPI)
                    const PaymentDetailsSection(),
                  ],
                ),
              ),
            ),

            // Footer with Secure Note and Pay Button
            const PaymentFooterSection(),
          ],
        );
      },
    );
  }
}
