part of 'personality_posts_bloc.dart';

@freezed
class PersonalityPostsEvent with _$PersonalityPostsEvent {
  const factory PersonalityPostsEvent.fetch({required int id}) = _Fetch;
  const factory PersonalityPostsEvent.refresh() = _Refresh;
}
