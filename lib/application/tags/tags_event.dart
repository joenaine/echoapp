part of 'tags_bloc.dart';

@freezed
class TagsEvent with _$TagsEvent {
  const factory TagsEvent.fetch({String? search}) = _Fetch;
  const factory TagsEvent.fetchFavourites() = _FetchFavourites;
  const factory TagsEvent.addTag({required int id}) = _AddTag;
}
