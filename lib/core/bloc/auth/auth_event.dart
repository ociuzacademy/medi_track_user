part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.userLoggingIn(String email, String password) =
      _UserLoggingIn;
  const factory AuthEvent.userLoggingOut() = _UserLoggingOut;
}
