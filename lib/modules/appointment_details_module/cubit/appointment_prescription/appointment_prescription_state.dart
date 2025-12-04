part of 'appointment_prescription_cubit.dart';

@freezed
sealed class AppointmentPrescriptionState with _$AppointmentPrescriptionState {
  const factory AppointmentPrescriptionState.initial() =
      AppointmentPrescriptionInitial;
  const factory AppointmentPrescriptionState.loading() =
      AppointmentPrescriptionLoading;
  const factory AppointmentPrescriptionState.success(
    AppointmentPrescriptionModel data,
  ) = AppointmentPrescriptionSuccess;
  const factory AppointmentPrescriptionState.error(String message) =
      AppointmentPrescriptionError;
}
