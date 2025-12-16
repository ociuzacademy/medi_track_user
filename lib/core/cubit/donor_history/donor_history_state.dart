part of 'donor_history_cubit.dart';

@freezed
sealed class DonorHistoryState with _$DonorHistoryState {
  const factory DonorHistoryState.initial() = DonorHistoryInitial;
  const factory DonorHistoryState.loading() = DonorHistoryLoading;
  const factory DonorHistoryState.success(
    List<BloodDonationHistoryModel> bloodDonationHistoryList,
  ) = DonorHistorySuccess;
  const factory DonorHistoryState.empty() = DonorHistoryEmpty;
  const factory DonorHistoryState.error(String message) = DonorHistoryError;
}
