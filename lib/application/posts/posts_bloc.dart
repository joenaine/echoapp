import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/filter/filter_bloc.dart';
import 'package:echoapp/application/posts/post_favorites/post_favorites_bloc.dart';
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
  final PostFavoritesBloc _favoritesBloc;
  final FilterBloc _filterBloc;
  final FToastService _fToast;

  int currentPage = 1;
  Map<int?, int> categoryPageMap = {}; // Keeps track of pages for each category
  int? currentCategoryId;
  bool isLoadingMore = false;
  bool hasMorePosts = true;

  int searchPage = 1;
  bool isLoadingMoreSearch = false;
  bool hasMoreSearchResults = true;
  String? currentSearchQuery;
  PostsBloc(this._filterBloc, this._postsRepository, this._fToast,
      this._favoritesBloc)
      : super(PostsState.initial()) {
    on<PostsEvent>((event, emit) async {
      // Listen to PostFavoritesBloc state changes
      _favoritesBloc.stream.listen((favoritesState) {
        final favoriteIds = favoritesState.posts
            .where((e) => e.id != null)
            .map((e) => e.id!)
            .toList();

        // Update the PostsBloc state with favorite post IDs
        add(PostsEvent.updateFavorites(favoriteIds));
      });
      _filterBloc.stream.listen((filterState) {
        add(const PostsEvent.fetch());
      });
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
        updateFavorites: (e) {
          emit(state.copyWith(favouritePosts: e.ids));
        },
        searchPost: (e) async {
          // Set the search query
          currentSearchQuery = e.search;
          searchPage = 1; // Reset search page

          if (currentSearchQuery?.isNotEmpty == true) {
            await _searchPosts(emit, e.search, page: 1, reset: true);
          } else {
            emit(state.copyWith(
              status: Status.success,
              searchPostModel: PostModel(items: []),
              hasMore: false,
            ));
          }
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
        loadMoreSearch: (_) async {
          if (!isLoadingMoreSearch && hasMoreSearchResults) {
            isLoadingMoreSearch = true;
            searchPage += 1; // Increment the page
            await _searchPosts(emit, currentSearchQuery!, page: searchPage);
            isLoadingMoreSearch = false;
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

    // Include filters in the request
    final filterParams = _getFilterParams();
    final result =
        await _postsRepository.getPosts(page: page, filters: filterParams);

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

  Map<String, dynamic> _getFilterParams() {
    final filterState = _filterBloc.state;
    return {
      "channel_id": filterState.channelList?.map((e) => e.id).join(','),
      "categories": filterState.categoryList?.map((e) => e.id).join(','),
      "tags": filterState.tagList?.map((e) => e.id).join(','),
      "personalities": filterState.personList?.map((e) => e.id).join(','),
    }..removeWhere((key, value) => value == null || value == '');
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
          final newPosts = [...?state.searchPostModel?.items, ...?r?.items];
          emit(state.copyWith(
            status: Status.success,
            searchPostModel: r?.copyWith(items: newPosts),
            hasMore: r!.items!.isNotEmpty,
          ));
        }
        hasMoreSearchResults = r.items!.isNotEmpty;
      },
    );
  }
}
