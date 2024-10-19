import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/domain/post/post_model.dart';
import 'package:echoapp/infrastructure/posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsRepository _postsRepository;
  final FToastService _fToast;

  int currentPage = 1;
  Map<int?, int> categoryPageMap = {}; // Keeps track of pages for each category
  int? currentCategoryId;
  bool isLoadingMore = false;
  bool hasMorePosts = true;
  PostsBloc(this._postsRepository, this._fToast) : super(PostsState.initial()) {
    on<PostsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async {
          currentCategoryId = null;
          await _fetchPosts(emit, page: 1, reset: true);
        },
        fetchByCategory: (e) async {
          currentCategoryId = e.id;
          await _fetchPostsByCategory(emit,
              categoryId: e.id!, page: 1, reset: true);
        },
        addPost: (e) async {
          List<int> list = [...state.favouritePosts ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(favouritePosts: list));
            final result = await _postsRepository.removePost(postId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          } else {
            list.add(e.id);
            emit(state.copyWith(favouritePosts: list));
            final result = await _postsRepository.addPost(postId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          }
        },
        fetchFavourites: (e) {},
        searchPost: (e) async {
          await _searchPosts(emit, e.search, page: 1, reset: true);
        },
        loadMore: (_) async {
          if (!isLoadingMore && hasMorePosts) {
            isLoadingMore = true;

            // Get the current page for the category
            final nextPage = (categoryPageMap[currentCategoryId] ?? 1) + 1;

            // Update the page number for the category
            categoryPageMap[currentCategoryId] = nextPage;

            if (currentCategoryId == null) {
              await _fetchPosts(emit, page: nextPage);
            } else {
              await _fetchPostsByCategory(emit,
                  categoryId: currentCategoryId!, page: nextPage);
            }

            isLoadingMore = false;
          }
        },
      );
    });
  }
  Future<void> _fetchPosts(Emitter<PostsState> emit,
      {required int page, bool reset = false}) async {
    if (reset) {
      emit(state.copyWith(status: Status.loading));
    }

    final result = await _postsRepository.getPosts(page: page);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        if (reset) {
          emit(state.copyWith(
            status: Status.success,
            postModel: r,
            hasMore: r!.items!.isNotEmpty,
          ));
        } else {
          final newPosts = [...?state.postModel?.items, ...?r?.items];
          emit(state.copyWith(
            status: Status.success,
            postModel: r?.copyWith(items: newPosts),
            hasMore: r!.items!.isNotEmpty,
          ));
        }
        hasMorePosts = r.items!.isNotEmpty;
      },
    );
  }

  Future<void> _fetchPostsByCategory(Emitter<PostsState> emit,
      {required int categoryId, required int page, bool reset = false}) async {
    if (reset) {
      emit(state.copyWith(status: Status.loading));
    }

    final result =
        await _postsRepository.getPostsByCategory(id: categoryId, page: page);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        if (reset) {
          emit(state.copyWith(
            status: Status.success,
            postModel: r,
            hasMore: r!.items!.isNotEmpty,
          ));
        } else {
          final newPosts = [...?state.postModel?.items, ...?r?.items];
          emit(state.copyWith(
            status: Status.success,
            postModel: r?.copyWith(items: newPosts),
            hasMore: r!.items!.isNotEmpty,
          ));
        }
        hasMorePosts = r.items!.isNotEmpty;
      },
    );
  }

  Future<void> _searchPosts(Emitter<PostsState> emit, String search,
      {required int page, bool reset = false}) async {
    if (reset) {
      emit(state.copyWith(status: Status.loading));
    }

    final result =
        await _postsRepository.getPostsBySearch(search: search, page: page);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        if (reset) {
          emit(state.copyWith(
            status: Status.success,
            searchPostModel: r,
            hasMore: r!.items!.isNotEmpty,
          ));
        } else {
          final newPosts = [...?state.postModel?.items, ...?r?.items];
          emit(state.copyWith(
            status: Status.success,
            postModel: r?.copyWith(items: newPosts),
            hasMore: r!.items!.isNotEmpty,
          ));
        }
        hasMorePosts = r.items!.isNotEmpty;
      },
    );
  }
}
