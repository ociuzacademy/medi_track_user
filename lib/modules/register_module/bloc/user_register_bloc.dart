import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/register_module/classes/register_details.dart';
import 'package:medi_track/modules/register_module/models/user_register_response_model.dart';
import 'package:medi_track/modules/register_module/services/register_services.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';
part 'user_register_bloc.freezed.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc() : super(UserRegisterInitial()) {
    on<_UserRegistering>(_onUserRegister);
  }

  Future<void> _onUserRegister(
    _UserRegistering event,
    Emitter<UserRegisterState> emit,
  ) async {
    emit(const UserRegisterState.userRegisterLoading());
    try {
      final UserRegisterResponseModel response =
          await RegisterServices.userRegister(
            registerDetails: event.registerDetails,
          );
      emit(UserRegisterState.userRegisterSuccess(response));
    } catch (e) {
      emit(UserRegisterState.userRegisterError(e.toString()));
    }
  }
}
