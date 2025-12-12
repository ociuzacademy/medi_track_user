import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/models/accept_blood_request_response_model.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/services/blood_requests_notifications_services.dart';

part 'accept_blood_request_event.dart';
part 'accept_blood_request_state.dart';
part 'accept_blood_request_bloc.freezed.dart';

class AcceptBloodRequestBloc
    extends Bloc<AcceptBloodRequestEvent, AcceptBloodRequestState> {
  AcceptBloodRequestBloc() : super(const AcceptBloodRequestInitial()) {
    on<_AcceptBloodRequest>(_onAcceptBloodRequest);
  }

  Future<void> _onAcceptBloodRequest(
    _AcceptBloodRequest event,
    Emitter<AcceptBloodRequestState> emit,
  ) async {
    emit(const AcceptBloodRequestLoading());
    try {
      final int donorId = await AuthStorageFunctions.getDonorId();
      final response =
          await BloodRequestsNotificationsServices.acceptBloodRequest(
            donorId: donorId,
            requestId: event.requestId,
          );
      emit(AcceptBloodRequestSuccess(response));
    } catch (e) {
      emit(AcceptBloodRequestError(e.toString()));
    }
  }
}
