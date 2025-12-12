part of 'all_blood_requests_cubit.dart';

@freezed
sealed class AllBloodRequestsState with _$AllBloodRequestsState {
  const factory AllBloodRequestsState.initial() = AllBloodRequestsInitial;
  const factory AllBloodRequestsState.loading() = AllBloodRequestsLoading;
  const factory AllBloodRequestsState.success(
    List<CommonBloodRequestModel> data,
  ) = AllBloodRequestsSuccess;
  const factory AllBloodRequestsState.empty() = AllBloodRequestsEmpty;
  const factory AllBloodRequestsState.error(String message) =
      AllBloodRequestsError;
}
