part of 'add_donation_record_bloc.dart';

@freezed
sealed class AddDonationRecordEvent with _$AddDonationRecordEvent {
  const factory AddDonationRecordEvent.started() = _Started;
  const factory AddDonationRecordEvent.addDonationRecord(
    UpdateDonationRecordData data,
  ) = _AddDonationRecord;
}
