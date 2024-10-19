part of 'channels_bloc.dart';

@freezed
class ChannelsEvent with _$ChannelsEvent {
  const factory ChannelsEvent.fetch() = _Fetch;
  const factory ChannelsEvent.fetchFavourites() = _FetchFavourites;
  const factory ChannelsEvent.addChannel({required int id}) = _AddChannel;
}
