part of 'submit_complaint_bloc.dart';

@freezed
sealed class SubmitComplaintState with _$SubmitComplaintState {
  const factory SubmitComplaintState.initial() = SubmitComplaintInitial;
  const factory SubmitComplaintState.loading() = SubmitComplaintLoading;
  const factory SubmitComplaintState.success(
    SubmitComplaintResponseModel response,
  ) = SubmitComplaintSuccess;
  const factory SubmitComplaintState.error(String error) = SubmitComplaintError;
}
