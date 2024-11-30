part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  factory FilterState.initial() => const FilterState(
      categoryList: [],
      selectedChannelId: null,
      personList: [],
      tagList: [],
      isAllCategoryChosen: false,
      isAllPersonalityChosen: false,
      isAllTagsChosen: false);
  const factory FilterState({
    int? selectedChannelId,
    List<CategoryModel>? personList,
    List<CategoryModel>? categoryList,
    List<CategoryModel>? tagList,
    bool? isAllCategoryChosen,
    bool? isAllPersonalityChosen,
    bool? isAllTagsChosen,
  }) = _FilterState;
}
