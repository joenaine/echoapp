part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState.initial() => const PostsState(
      status: Status.initial,
      error: null,
      postModel: null,
      favouritePosts: [],
      searchPostModel: null);
  const factory PostsState(
      {Status? status,
      PostModel? postModel,
      PostModel? searchPostModel,
      List<int>? favouritePosts,
      @Default(false) bool hasMore,
      String? error}) = _PostsState;
}
