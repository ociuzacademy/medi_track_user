import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/models/common_blood_request_model.dart';
import 'package:medi_track/modules/blood_requests_module/services/blood_request_services.dart';

part 'all_blood_requests_state.dart';
part 'all_blood_requests_cubit.freezed.dart';

class AllBloodRequestsCubit extends Cubit<AllBloodRequestsState> {
  AllBloodRequestsCubit() : super(const AllBloodRequestsState.initial());

  Future<void> getAllBloodRequests() async {
    emit(const AllBloodRequestsState.loading());
    try {
      final List<CommonBloodRequestModel> response =
          await BloodRequestServices.getAllBloodRequests();
      if (response.isEmpty) {
        emit(const AllBloodRequestsState.empty());
      } else {
        emit(AllBloodRequestsState.success(response));
      }
    } catch (e) {
      emit(AllBloodRequestsState.error(e.toString()));
    }
  }
}
