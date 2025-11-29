import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_booking_module/models/expected_token_model.dart';
import 'package:medi_track/modules/appointment_booking_module/services/appointment_booking_services.dart';

part 'expected_token_state.dart';
part 'expected_token_cubit.freezed.dart';

class ExpectedTokenCubit extends Cubit<ExpectedTokenState> {
  ExpectedTokenCubit() : super(const ExpectedTokenState.initial());

  Future<void> getExpectedToken({
    required int doctorId,
    required DateTime date,
  }) async {
    emit(const ExpectedTokenState.loading());
    try {
      final expectedToken = await AppointmentBookingServices.getExpectedToken(
        doctorId: doctorId,
        date: date,
      );
      emit(ExpectedTokenState.success(expectedToken));
    } catch (e) {
      emit(ExpectedTokenState.error(e.toString()));
    }
  }
}
