part of 'add_donation_record_bloc.dart';

@freezed
sealed class AddDonationRecordState with _$AddDonationRecordState {
  const factory AddDonationRecordState.initial() = AddDonationRecordInitial;
  const factory AddDonationRecordState.loading() = AddDonationRecordLoading;
  const factory AddDonationRecordState.success(
    AddDonationRecordResponseModel response,
  ) = AddDonationRecordSuccess;
  const factory AddDonationRecordState.error(String message) =
      AddDonationRecordError;
}
