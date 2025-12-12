import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/core/models/common_blood_request_model.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/services/blood_requests_notifications_services.dart';

part 'user_blood_requests_state.dart';
part 'user_blood_requests_cubit.freezed.dart';

class UserBloodRequestsCubit extends Cubit<UserBloodRequestsState> {
  UserBloodRequestsCubit() : super(const UserBloodRequestsState.initial());

  Future<void> getBloodRequests() async {
    emit(const UserBloodRequestsState.loading());
    try {
      final int donorId = await AuthStorageFunctions.getDonorId();
      final List<CommonBloodRequestModel> response =
          await BloodRequestsNotificationsServices.getBloodRequests(
            donorId: donorId,
          );
      if (response.isEmpty) {
        emit(const UserBloodRequestsState.empty());
      } else {
        emit(UserBloodRequestsState.success(bloodRequests: response));
      }
    } catch (e) {
      emit(UserBloodRequestsState.error(message: e.toString()));
    }
  }
}
