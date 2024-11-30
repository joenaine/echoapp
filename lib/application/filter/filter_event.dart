part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.addChannel({int? channelId}) = _AddChannel;
  const factory FilterEvent.addCategory({CategoryModel? category}) =
      _AddCategory;
  const factory FilterEvent.selectAllCategories(
      List<CategoryModel>? allCategories) = _SelectAllCategories;
  const factory FilterEvent.addPersonality({CategoryModel? person}) =
      _AddPersonality;
  const factory FilterEvent.selectAllPersonalities(
      List<CategoryModel>? allCategories) = _SelectAllPersonalities;
  const factory FilterEvent.addTag({CategoryModel? tag}) = _AddTag;
  const factory FilterEvent.selectAllTags(List<CategoryModel>? allCategories) =
      _SelectAllTags;
}
