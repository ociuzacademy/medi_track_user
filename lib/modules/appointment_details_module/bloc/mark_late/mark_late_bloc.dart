import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_details_module/model/late_marking_response_model.dart';
import 'package:medi_track/modules/appointment_details_module/services/appointment_details_services.dart';

part 'mark_late_event.dart';
part 'mark_late_state.dart';
part 'mark_late_bloc.freezed.dart';

class MarkLateBloc extends Bloc<MarkLateEvent, MarkLateState> {
  MarkLateBloc() : super(const MarkLateInitial()) {
    on<_MarkingLate>(_onMarkingLate);
  }

  Future<void> _onMarkingLate(
    _MarkingLate event,
    Emitter<MarkLateState> emit,
  ) async {
    emit(const MarkLateState.loading());
    try {
      final response = await AppointmentDetailsServices.markLate(
        appointmentId: event.appointmentId,
      );
      emit(MarkLateState.success(response));
    } catch (e) {
      emit(MarkLateState.error(e.toString()));
    }
  }
}
