part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.fetch() = _Fetch;
  const factory PostsEvent.fetchByCategory({int? id}) = _FetchByCategory;
  const factory PostsEvent.updateFavorites(List<int> ids) = _UpdateFavorites;
  const factory PostsEvent.addPost({required int id}) = _AddPost;
  const factory PostsEvent.searchPost({required String search}) = _SearchPost;
  const factory PostsEvent.loadMore() = _LoadMore;
  const factory PostsEvent.loadMoreSearch() = _LoadMoreSearch;
}
