part of 'expected_token_cubit.dart';

@freezed
sealed class ExpectedTokenState with _$ExpectedTokenState {
  const factory ExpectedTokenState.initial() = ExpectedTokenInitial;
  const factory ExpectedTokenState.loading() = ExpectedTokenLoading;
  const factory ExpectedTokenState.success(ExpectedTokenModel expectedToken) =
      ExpectedTokenSuccess;
  const factory ExpectedTokenState.error(String errorMessage) =
      ExpectedTokenError;
}
