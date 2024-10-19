part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState.initial() => const PostsState(
      status: Status.initial, error: null, postModel: null, favouritePosts: []);
  const factory PostsState(
      {Status? status,
      PostModel? postModel,
      List<int>? favouritePosts,
      String? error}) = _PostsState;
}
