part of 'post_favorites_bloc.dart';

@freezed
class PostFavoritesEvent with _$PostFavoritesEvent {
  const factory PostFavoritesEvent.fetch() = _Fetch;
}
