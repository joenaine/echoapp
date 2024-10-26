part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  factory FilterState.initial() => const FilterState(
      categoryList: [], channelList: [], personList: [], tagList: []);
  const factory FilterState({
    List<ChannelModel>? channelList,
    List<CategoryModel>? personList,
    List<CategoryModel>? categoryList,
    List<CategoryModel>? tagList,
  }) = _FilterState;
}
