part of 'tags_bloc.dart';

@freezed
class TagsState with _$TagsState {
  factory TagsState.initial() => const TagsState(
      categories: [],
      status: Status.initial,
      error: null,
      categoriesFavorite: [],
      selectedCategories: null);
  const factory TagsState(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      @Default('') String search,
      String? error}) = _TagsState;
}
