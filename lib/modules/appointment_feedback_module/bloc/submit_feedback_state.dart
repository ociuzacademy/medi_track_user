part of 'submit_feedback_bloc.dart';

@freezed
sealed class SubmitFeedbackState with _$SubmitFeedbackState {
  const factory SubmitFeedbackState.initial() = SubmitFeedbackInitial;
  const factory SubmitFeedbackState.loading() = SubmitFeedbackLoading;
  const factory SubmitFeedbackState.success(
    AppointmentFeedbackResponseModel response,
  ) = SubmitFeedbackSuccess;
  const factory SubmitFeedbackState.error(String message) = SubmitFeedbackError;
}
