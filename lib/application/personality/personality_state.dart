part of 'personality_bloc.dart';

@freezed
class PersonalityState with _$PersonalityState {
  factory PersonalityState.initial() => const PersonalityState(
      categories: [],
      status: Status.initial,
      error: null,
      categoriesFavorite: [],
      selectedCategories: null);
  const factory PersonalityState(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String? error}) = _PersonalityState;
}
