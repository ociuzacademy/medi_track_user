import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/submit_complaint_module/data/complaint_data.dart';
import 'package:medi_track/modules/submit_complaint_module/model/submit_complaint_response_model.dart';
import 'package:medi_track/modules/submit_complaint_module/service/submit_complaint_service.dart';

part 'submit_complaint_event.dart';
part 'submit_complaint_state.dart';
part 'submit_complaint_bloc.freezed.dart';

class SubmitComplaintBloc
    extends Bloc<SubmitComplaintEvent, SubmitComplaintState> {
  SubmitComplaintBloc() : super(const SubmitComplaintInitial()) {
    on<_SubmitComplaint>(_onSubmitComplaint);
  }

  Future<void> _onSubmitComplaint(
    _SubmitComplaint event,
    Emitter<SubmitComplaintState> emit,
  ) async {
    emit(const SubmitComplaintState.loading());
    try {
      final String userId = await AuthStorageFunctions.getUserId();

      if (userId.isEmpty) {
        emit(const SubmitComplaintState.error('User ID is empty'));
        return;
      }

      final response = await SubmitComplaintService.submitComplaint(
        userId: userId,
        complaintData: event.complaintData,
      );
      emit(SubmitComplaintState.success(response));
    } catch (e) {
      emit(SubmitComplaintState.error(e.toString()));
    }
  }
}
