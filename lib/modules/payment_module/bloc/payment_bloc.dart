import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/payment_module/classes/card_payment_data.dart';
import 'package:medi_track/modules/payment_module/classes/u_p_i_payment_data.dart';
import 'package:medi_track/modules/payment_module/models/card_payment_response_model.dart';
import 'package:medi_track/modules/payment_module/models/u_p_i_payment_response_model.dart';
import 'package:medi_track/modules/payment_module/services/payment_services.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentInitial()) {
    on<_CardPayment>(_onCardPayment);
    on<_UPIPayment>(_onUPIPayment);
  }

  Future<void> _onCardPayment(
    _CardPayment event,
    Emitter<PaymentState> emit,
  ) async {
    emit(const PaymentState.loading());
    try {
      final response = await PaymentServices.makeCardPayment(
        cardPaymentData: event.cardPaymentData,
      );
      emit(PaymentState.cardPaymentSuccess(response));
    } catch (e) {
      emit(PaymentState.error(e.toString()));
    }
  }

  Future<void> _onUPIPayment(
    _UPIPayment event,
    Emitter<PaymentState> emit,
  ) async {
    emit(const PaymentState.loading());
    try {
      final response = await PaymentServices.makeUPIPayment(
        upiPaymentData: event.upiPaymentData,
      );
      emit(PaymentState.upiPaymentSuccess(response));
    } catch (e) {
      emit(PaymentState.error(e.toString()));
    }
  }
}
