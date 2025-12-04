import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_feedback_module/classes/feedback_data.dart';
import 'package:medi_track/modules/appointment_feedback_module/models/appointment_feedback_response_model.dart';
import 'package:medi_track/modules/appointment_feedback_module/services/appointment_feedback_services.dart';

part 'submit_feedback_event.dart';
part 'submit_feedback_state.dart';
part 'submit_feedback_bloc.freezed.dart';

class SubmitFeedbackBloc
    extends Bloc<SubmitFeedbackEvent, SubmitFeedbackState> {
  SubmitFeedbackBloc() : super(const SubmitFeedbackInitial()) {
    on<_SubmittingFeedback>(_onSubmittingFeedback);
  }

  Future<void> _onSubmittingFeedback(
    _SubmittingFeedback event,
    Emitter<SubmitFeedbackState> emit,
  ) async {
    emit(const SubmitFeedbackLoading());
    try {
      final response = await AppointmentFeedbackServices.submitFeedback(
        feedbackData: event.feedbackData,
      );
      emit(SubmitFeedbackSuccess(response));
    } catch (e) {
      emit(SubmitFeedbackError(e.toString()));
    }
  }
}
