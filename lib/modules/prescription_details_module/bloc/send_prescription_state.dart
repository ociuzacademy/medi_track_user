part of 'send_prescription_bloc.dart';

@freezed
sealed class SendPrescriptionState with _$SendPrescriptionState {
  const factory SendPrescriptionState.initial() = SendPrescriptionInitial;
  const factory SendPrescriptionState.loading() = SendPrescriptionLoading;
  const factory SendPrescriptionState.success() = SendPrescriptionSuccess;
  const factory SendPrescriptionState.error(String message) =
      SendPrescriptionError;
}
