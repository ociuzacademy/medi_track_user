import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/payment_module/classes/card_payment_data.dart';
import 'package:medi_track/modules/payment_module/classes/u_p_i_payment_data.dart';

class PaymentHelper {
  static void setAppointmentDetails(BuildContext context, int appointmentId) {
    final AppointmentDetailsCubit appointmentDetailsCubit = context
        .read<AppointmentDetailsCubit>();
    appointmentDetailsCubit.getAppointmentDetails(appointmentId);
  }

  static void processCardPayment(
    BuildContext context,
    CardPaymentData cardPaymentData,
  ) {
    FocusScope.of(context).unfocus();
    final PaymentBloc paymentBloc = context.read<PaymentBloc>();
    paymentBloc.add(PaymentEvent.cardPayment(cardPaymentData));
  }

  static void processUPIPayment(
    BuildContext context,
    UPIPaymentData upiPaymentData,
  ) {
    FocusScope.of(context).unfocus();
    final PaymentBloc paymentBloc = context.read<PaymentBloc>();
    paymentBloc.add(PaymentEvent.upiPayment(upiPaymentData));
  }
}
