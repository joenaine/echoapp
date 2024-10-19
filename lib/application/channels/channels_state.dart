part of 'channels_bloc.dart';

@freezed
class ChannelsState with _$ChannelsState {
  factory ChannelsState.initial() => const ChannelsState(
      status: Status.initial, error: null, postModel: null, favouritePosts: []);
  const factory ChannelsState(
      {Status? status,
      ChannelModel? postModel,
      List<int>? favouritePosts,
      String? error}) = _ChannelsState;
}
