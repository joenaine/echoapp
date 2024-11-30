part of 'personality_posts_bloc.dart';

@freezed
class PersonalityPostsState with _$PersonalityPostsState {
  const factory PersonalityPostsState({
    @Default(Status.initial) Status status,
    @Default([]) List<Item> posts,
    @Default('') String errorMessage,
    @Default(true) bool hasMore,
  }) = _PersonalityPostsState;
}
