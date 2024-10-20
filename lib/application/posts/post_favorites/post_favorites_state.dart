part of 'post_favorites_bloc.dart';

@freezed
class PostFavoritesState with _$PostFavoritesState {
  const factory PostFavoritesState({
    @Default(Status.initial) Status status,
    @Default([]) List<Item> posts,
    @Default('') String errorMessage,
    @Default(true) bool hasMore,
  }) = _PostFavoritesState;
}
