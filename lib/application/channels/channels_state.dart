part of 'channels_bloc.dart';

@freezed
class ChannelsState with _$ChannelsState {
  factory ChannelsState.initial() => const ChannelsState(
      status: Status.initial,
      error: null,
      channelList: [],
      favouriteChannels: []);
  const factory ChannelsState({
    Status? status,
    List<ChannelModel>? channelList,
    List<int>? favouriteChannels,
    String? error,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
  }) = _ChannelsState;
}
