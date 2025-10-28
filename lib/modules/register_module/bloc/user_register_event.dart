part of 'user_register_bloc.dart';

@freezed
sealed class UserRegisterEvent with _$UserRegisterEvent {
  const factory UserRegisterEvent.started() = _Started;
  const factory UserRegisterEvent.userRegistering(
    RegisterDetails registerDetails,
  ) = _UserRegistering;
}
