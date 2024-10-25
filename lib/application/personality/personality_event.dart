part of 'personality_bloc.dart';

@freezed
class PersonalityEvent with _$PersonalityEvent {
  const factory PersonalityEvent.fetch({String? search}) = _Fetch;
  const factory PersonalityEvent.fetchFavourites() = _FetchFavourites;
  const factory PersonalityEvent.addPerson({required int id}) = _AddPerson;
}
