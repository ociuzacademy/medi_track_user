part of 'accept_blood_request_bloc.dart';

@freezed
sealed class AcceptBloodRequestState with _$AcceptBloodRequestState {
  const factory AcceptBloodRequestState.initial() = AcceptBloodRequestInitial;
  const factory AcceptBloodRequestState.loading() = AcceptBloodRequestLoading;
  const factory AcceptBloodRequestState.success(
    AcceptBloodRequestResponseModel response,
  ) = AcceptBloodRequestSuccess;
  const factory AcceptBloodRequestState.error(String message) =
      AcceptBloodRequestError;
}
