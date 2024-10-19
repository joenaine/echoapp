part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  factory CategoriesState.initial() => const CategoriesState(
      categories: [],
      status: Status.initial,
      error: null,
      categoriesFavorite: [],
      selectedCategories: null);
  const factory CategoriesState(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String? error}) = _CategoriesState;
}
