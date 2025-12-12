part of 'user_blood_requests_cubit.dart';

@freezed
sealed class UserBloodRequestsState with _$UserBloodRequestsState {
  const factory UserBloodRequestsState.initial() = UserBloodRequestsInitial;
  const factory UserBloodRequestsState.loading() = UserBloodRequestsLoading;
  const factory UserBloodRequestsState.success({
    required List<CommonBloodRequestModel> bloodRequests,
  }) = UserBloodRequestsSuccess;
  const factory UserBloodRequestsState.empty() = UserBloodRequestsEmpty;
  const factory UserBloodRequestsState.error({required String message}) =
      UserBloodRequestsError;
}
