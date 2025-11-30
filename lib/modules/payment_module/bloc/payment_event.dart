part of 'payment_bloc.dart';

@freezed
sealed class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;
  const factory PaymentEvent.cardPayment(CardPaymentData cardPaymentData) =
      _CardPayment;
  const factory PaymentEvent.upiPayment(UPIPaymentData upiPaymentData) =
      _UPIPayment;
}
