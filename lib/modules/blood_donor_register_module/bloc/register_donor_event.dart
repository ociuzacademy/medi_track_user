part of 'register_donor_bloc.dart';

@freezed
sealed class RegisterDonorEvent with _$RegisterDonorEvent {
  const factory RegisterDonorEvent.started() = _Started;
  const factory RegisterDonorEvent.registerDonor({
    required BloodDonorRegisterData bloodDonorRegisterData,
  }) = _RegisterDonor;
}
