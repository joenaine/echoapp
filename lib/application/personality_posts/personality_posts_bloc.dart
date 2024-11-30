import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/domain/post/item_model.dart';
import 'package:echoapp/infrastructure/posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personality_posts_event.dart';
part 'personality_posts_state.dart';
part 'personality_posts_bloc.freezed.dart';

@LazySingleton()
class PersonalityPostsBloc
    extends Bloc<PersonalityPostsEvent, PersonalityPostsState> {
  final PostsRepository _postsRepository;
  int _currentPage = 1;
  bool _isLoading = false;
  int? personId;

  PersonalityPostsBloc(this._postsRepository)
      : super(const PersonalityPostsState()) {
    on<PersonalityPostsEvent>((event, emit) async {
      await event.map(
        fetch: (value) async {
          if (_isLoading || !state.hasMore) return;
          personId = value.id;

          _isLoading = true;
          emit(state.copyWith(status: Status.loading));

          final result = await _postsRepository.getPostsPersonality(
              page: _currentPage, id: value.id);

          result.fold(
            (error) {
              _isLoading = false;
              emit(state.copyWith(
                status: Status.error,
                errorMessage: error,
              ));
            },
            (newPosts) {
              _isLoading = false;

              if (newPosts == null || newPosts.isEmpty) {
                emit(state.copyWith(
                  status: Status.success,
                  hasMore: false,
                ));
              } else {
                _currentPage++;
                emit(state.copyWith(
                  status: Status.success,
                  posts: List.of(state.posts)..addAll(newPosts),
                  hasMore: true,
                ));
              }
            },
          );
        },
        refresh: (value) async {
          // Reset the state for refresh
          _currentPage = 1;
          _isLoading = false;
          emit(state.copyWith(
            status: Status.initial,
            posts: [],
            hasMore: true,
          ));

          add(PersonalityPostsEvent.fetch(id: personId ?? 0));
        },
      );
    });
  }
}
