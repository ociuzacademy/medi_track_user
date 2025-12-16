part of 'next_donation_date_cubit.dart';

@freezed
sealed class NextDonationDateState with _$NextDonationDateState {
  const factory NextDonationDateState.initial() = NextDonationDateInitial;
  const factory NextDonationDateState.loading() = NextDonationDateLoading;
  const factory NextDonationDateState.success({
    required NextDonationDateModel nextDonationDate,
  }) = NextDonationDateSuccess;
  const factory NextDonationDateState.error({required String message}) =
      NextDonationDateError;
}
