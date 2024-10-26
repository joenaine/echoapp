part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  factory FilterState.initial() => const FilterState(
      categoryList: [], selectedChannelId: null, personList: [], tagList: []);
  const factory FilterState({
    int? selectedChannelId,
    List<CategoryModel>? personList,
    List<CategoryModel>? categoryList,
    List<CategoryModel>? tagList,
  }) = _FilterState;
}
