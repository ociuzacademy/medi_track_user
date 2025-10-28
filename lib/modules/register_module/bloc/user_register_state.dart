part of 'user_register_bloc.dart';

@freezed
sealed class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState.initial() = UserRegisterInitial;
  const factory UserRegisterState.userRegisterLoading() = UserRegisterLoading;
  const factory UserRegisterState.userRegisterError(String errorMessage) =
      UserRegisterError;
  const factory UserRegisterState.userRegisterSuccess(
    UserRegisterResponseModel response,
  ) = UserRegisterSuccess;
}
