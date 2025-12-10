part of 'register_donor_bloc.dart';

@freezed
sealed class RegisterDonorState with _$RegisterDonorState {
  const factory RegisterDonorState.initial() = RegisterDonorInitial;
  const factory RegisterDonorState.loading() = RegisterDonorLoading;
  const factory RegisterDonorState.success(
    BloodDonorRegisterResponseModel response,
  ) = RegisterDonorSuccess;
  const factory RegisterDonorState.error(String message) = RegisterDonorError;
}
