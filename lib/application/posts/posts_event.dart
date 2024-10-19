part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.fetch() = _Fetch;
  const factory PostsEvent.fetchByCategory({int? id}) = _FetchByCategory;
  const factory PostsEvent.fetchFavourites() = _FetchFavourites;
  const factory PostsEvent.addPost({required int id}) = _AddPost;
}
