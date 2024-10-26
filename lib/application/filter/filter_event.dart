part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.addChannel({int? channelId}) = _AddChannel;
  const factory FilterEvent.addCategory({CategoryModel? category}) =
      _AddCategory;
  const factory FilterEvent.addPersonality({CategoryModel? person}) =
      _AddPersonality;
  const factory FilterEvent.addTag({CategoryModel? tag}) = _AddTag;
}
