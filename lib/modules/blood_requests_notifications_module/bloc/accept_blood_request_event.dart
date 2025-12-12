part of 'accept_blood_request_bloc.dart';

@freezed
sealed class AcceptBloodRequestEvent with _$AcceptBloodRequestEvent {
  const factory AcceptBloodRequestEvent.started() = _Started;
  const factory AcceptBloodRequestEvent.acceptBloodRequest({
    required int requestId,
  }) = _AcceptBloodRequest;
}
