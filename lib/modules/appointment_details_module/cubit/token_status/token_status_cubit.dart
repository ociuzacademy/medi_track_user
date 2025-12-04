import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_details_module/model/token_status_model.dart';
import 'package:medi_track/modules/appointment_details_module/services/appointment_details_services.dart';

part 'token_status_state.dart';
part 'token_status_cubit.freezed.dart';

class TokenStatusCubit extends Cubit<TokenStatusState> {
  TokenStatusCubit() : super(const TokenStatusState.initial());

  Future<void> getTokenStatus({required int doctorId}) async {
    emit(const TokenStatusState.loading());
    try {
      final response = await AppointmentDetailsServices.getTokenStatus(
        doctorId: doctorId,
      );
      emit(TokenStatusState.success(response));
    } catch (e) {
      emit(TokenStatusState.error(e.toString()));
    }
  }
}
