part of 'token_status_cubit.dart';

@freezed
sealed class TokenStatusState with _$TokenStatusState {
  const factory TokenStatusState.initial() = TokenStatusInitial;
  const factory TokenStatusState.loading() = TokenStatusLoading;
  const factory TokenStatusState.success(TokenStatusModel data) =
      TokenStatusSuccess;
  const factory TokenStatusState.error(String error) = TokenStatusError;
}
