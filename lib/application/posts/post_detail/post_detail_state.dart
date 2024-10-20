part of 'post_detail_bloc.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = _Initial;
  const factory PostDetailState.loading() = _Loading;
  const factory PostDetailState.success({PostSingleModel? postSingle}) =
      _Success;
  const factory PostDetailState.error({String? error}) = _Error;
}
