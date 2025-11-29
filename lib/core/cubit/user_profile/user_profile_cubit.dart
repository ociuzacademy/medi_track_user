import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/core/models/user_profile_model.dart';
import 'package:medi_track/core/services/app_services.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(const UserProfileState.initial());

  Future<void> getUserProfile() async {
    emit(const UserProfileState.loading());
    try {
      final String userId = await AuthStorageFunctions.getUserId();

      final UserProfileModel userProfile = await AppServices.getUserProfile(
        userId: userId,
      );
      emit(UserProfileState.success(userProfile));
    } catch (e) {
      emit(UserProfileState.error(e.toString()));
    }
  }
}
