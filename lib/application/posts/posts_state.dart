part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState.initial() => const PostsState(
      status: Status.initial,
      error: null,
      postModel: null,
      favouritePosts: [],
      categoryId: null,
      searchPostModel: null);
  const factory PostsState(
      {Status? status,
      PostModel? postModel,
      PostModel? searchPostModel,
      List<int>? favouritePosts,
      int? categoryId,
      @Default(false) bool hasMore,
      @Default(false) bool hasMoreSearchResults,
      String? error}) = _PostsState;
}
