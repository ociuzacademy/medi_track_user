part of 'feedback_details_cubit.dart';

@freezed
sealed class FeedbackDetailsState with _$FeedbackDetailsState {
  const factory FeedbackDetailsState.initial() = FeedbackDetailsInitial;
  const factory FeedbackDetailsState.loading() = FeedbackDetailsLoading;
  const factory FeedbackDetailsState.success(FeedbackDetailsModel data) =
      FeedbackDetailsSuccess;
  const factory FeedbackDetailsState.error(String message) =
      FeedbackDetailsError;
}
