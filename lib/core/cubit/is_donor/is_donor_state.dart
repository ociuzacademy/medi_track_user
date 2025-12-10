part of 'is_donor_cubit.dart';

@freezed
sealed class IsDonorState with _$IsDonorState {
  const factory IsDonorState.initial() = IsDonorInitial;
  const factory IsDonorState.loading() = IsDonorLoading;
  const factory IsDonorState.success(bool isDonor) = IsDonorSuccess;
  const factory IsDonorState.error(String message) = IsDonorError;
}
