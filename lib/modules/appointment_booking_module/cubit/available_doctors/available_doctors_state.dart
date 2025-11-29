part of 'available_doctors_cubit.dart';

@freezed
sealed class AvailableDoctorsState with _$AvailableDoctorsState {
  const factory AvailableDoctorsState.initial() = AvailableDoctorsInitial;
  const factory AvailableDoctorsState.loading() = AvailableDoctorsLoading;
  const factory AvailableDoctorsState.success({
    required AvailableDoctorsModel availableDoctors,
  }) = AvailableDoctorsSuccess;
  const factory AvailableDoctorsState.error({required String errorMessage}) =
      AvailableDoctorsError;
}
