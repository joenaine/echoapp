import 'package:bloc/bloc.dart';
import 'package:echoapp/domain/post/post_detail_model.dart';
import 'package:echoapp/infrastructure/posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_detail_event.dart';
part 'post_detail_state.dart';
part 'post_detail_bloc.freezed.dart';

@injectable
class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final PostsRepository _postsRepository;
  PostDetailBloc(this._postsRepository) : super(const _Initial()) {
    on<PostDetailEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(const _Loading());

          final result = await _postsRepository.getPostDetail(postId: e.id);

          result.fold((l) => _Error(error: l), (r) => _Success(postSingle: r));
        },
      );
    });
  }
}
