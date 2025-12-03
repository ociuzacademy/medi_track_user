part of 'cancel_appointment_bloc.dart';

@freezed
sealed class CancelAppointmentState with _$CancelAppointmentState {
  const factory CancelAppointmentState.initial() = CancelAppointmentInitial;
  const factory CancelAppointmentState.loading() = CancelAppointmentLoading;
  const factory CancelAppointmentState.success(
    AppointmentCancelResponseModel response,
  ) = CancelAppointmentSuccess;
  const factory CancelAppointmentState.error(String error) =
      CancelAppointmentError;
}
