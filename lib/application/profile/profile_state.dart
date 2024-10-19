part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.initial() => const ProfileState(
      profileModel: null, status: Status.initial, error: null);
  const factory ProfileState(
      {ProfileModel? profileModel,
      Status? status,
      String? error}) = _ProfileState;
}
