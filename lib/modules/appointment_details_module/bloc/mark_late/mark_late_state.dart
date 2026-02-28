part of 'mark_late_bloc.dart';

@freezed
sealed class MarkLateState with _$MarkLateState {
  const factory MarkLateState.initial() = MarkLateInitial;
  const factory MarkLateState.loading() = MarkLateLoading;
  const factory MarkLateState.success(LateMarkingResponseModel response) =
      MarkLateSuccess;
  const factory MarkLateState.error(String message) = MarkLateError;
}
