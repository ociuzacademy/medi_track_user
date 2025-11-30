part of 'payment_bloc.dart';

@freezed
sealed class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.cardPaymentSuccess(
    CardPaymentResponseModel response,
  ) = CardPaymentSuccess;
  const factory PaymentState.upiPaymentSuccess(
    UPIPaymentResponseModel response,
  ) = UPIPaymentSuccess;
  const factory PaymentState.error(String errorMessage) = PaymentError;
}
