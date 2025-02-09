part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetch() = _Fetch;
  const factory CategoriesEvent.fetchFavourites() = _FetchFavourites;
  const factory CategoriesEvent.addCategory({required int id}) = _AddCategory;
}
