part of 'post_detail_bloc.dart';

@freezed
class PostDetailEvent with _$PostDetailEvent {
  const factory PostDetailEvent.fetch({int? id}) = _Fetch;
}
