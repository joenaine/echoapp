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
  Map<int?, int> categoryPageMap = {};
  int? currentCategoryId;
  bool isLoadingMore = false;
  bool hasMorePosts = true;

  int searchPage = 1;
  bool isLoadingMoreSearch = false;
  bool hasMoreSearchResults = true;
  String? currentSearchQuery;

  static const int itemsPerPage =
      10; // Adjust this based on your API's typical response

  PostsBloc(
    this._filterBloc,
    this._postsRepository,
    this._fToast,
    this._favoritesBloc,
  ) : super(PostsState.initial()) {
    // Listen to PostFavoritesBloc changes
    _favoritesBloc.stream.listen((favoritesState) {
      final favoriteIds = favoritesState.posts
          .where((e) => e.id != null)
          .map((e) => e.id!)
          .toList();
      add(PostsEvent.updateFavorites(favoriteIds));
    });

    // Listen to FilterBloc changes
    _filterBloc.stream.listen((filterState) {
      add(const PostsEvent.filterChanged());
    });

    on<PostsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async => await _fetchPosts(emit, page: 1, reset: true),
        fetchByCategory: (e) async {
          currentCategoryId = e.id;
          await _fetchPostsByCategory(emit,
              categoryId: e.id!, page: 1, reset: true);
        },
        refreshed: (_) async {
          currentCategoryId = null;
          categoryPageMap.clear();
          currentPage = 1;
          emit(PostsState.initial());
          await _fetchPosts(emit, page: 1, reset: true);
        },
        filterChanged: (_) async {
          currentCategoryId = null;
          categoryPageMap.clear();
          currentPage = 1;
          hasMorePosts = true;
          emit(state.copyWith(status: Status.loading, postModel: null));
          await _fetchPosts(emit, page: 1, reset: true);
        },
        addPost: (e) async {
          final isFavorite = state.favouritePosts?.contains(e.id) ?? false;
          await _toggleFavoriteStatus(emit, e.id, isFavorite);
        },
        updateFavorites: (e) {
          emit(state.copyWith(favouritePosts: e.ids));
        },
        searchPost: (e) async {
          currentSearchQuery = e.search;
          searchPage = 1;
          hasMoreSearchResults = true;
          emit(state.copyWith(status: Status.loading, searchPostModel: null));
          await _searchPosts(emit, e.search, page: 1, reset: true);
        },
        loadMore: (_) async {
          if (!isLoadingMore && hasMorePosts) {
            isLoadingMore = true;
            final nextPage = (categoryPageMap[currentCategoryId] ?? 1) + 1;
            categoryPageMap[currentCategoryId] = nextPage;

            if (currentCategoryId == null) {
              await _fetchPosts(emit, page: nextPage);
            } else {
              await _fetchPostsByCategory(
                emit,
                categoryId: currentCategoryId!,
                page: nextPage,
              );
            }

            isLoadingMore = false;
          }
        },
        loadMoreSearch: (_) async {
          if (!isLoadingMoreSearch && hasMoreSearchResults) {
            isLoadingMoreSearch = true;
            searchPage += 1;
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
      emit(state.copyWith(status: Status.loading, postModel: null));
    }

    final filterParams = _getFilterParams();
    final result =
        await _postsRepository.getPosts(page: page, filters: filterParams);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        final newPosts =
            reset ? r?.items : [...?state.postModel?.items, ...?r?.items];

        // Set hasMorePosts to false if fewer items were fetched than expected
        if ((r?.items?.length ?? 0) < itemsPerPage) {
          hasMorePosts = false;
        } else if (r?.items?.isEmpty ?? true) {
          hasMorePosts = false; // No more items
        }

        emit(state.copyWith(
          status: Status.success,
          postModel: r?.copyWith(items: newPosts),
          hasMore: hasMorePosts,
        ));
      },
    );
  }

  Future<void> _fetchPostsByCategory(Emitter<PostsState> emit,
      {required int categoryId, required int page, bool reset = false}) async {
    if (reset) {
      emit(state.copyWith(status: Status.loading, postModel: null));
    }

    final result =
        await _postsRepository.getPostsByCategory(id: categoryId, page: page);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        final newPosts =
            reset ? r?.items : [...?state.postModel?.items, ...?r?.items];

        // Set hasMorePosts to false if fewer items were fetched than expected
        if ((r?.items?.length ?? 0) < itemsPerPage) {
          hasMorePosts = false;
        } else if (r?.items?.isEmpty ?? true) {
          hasMorePosts = false; // No more items
        }

        emit(state.copyWith(
          status: Status.success,
          postModel: r?.copyWith(items: newPosts),
          hasMore: hasMorePosts,
        ));
      },
    );
  }

  Future<void> _searchPosts(Emitter<PostsState> emit, String search,
      {required int page, bool reset = false}) async {
    if (reset) {
      emit(state.copyWith(status: Status.loading, searchPostModel: null));
    }

    final result =
        await _postsRepository.getPostsBySearch(search: search, page: page);

    result.fold(
      (l) => emit(state.copyWith(status: Status.error, error: l)),
      (r) {
        final newPosts =
            reset ? r?.items : [...?state.searchPostModel?.items, ...?r?.items];

        // Set hasMoreSearchResults to false if fewer items were fetched than expected
        if ((r?.items?.length ?? 0) < itemsPerPage) {
          hasMoreSearchResults = false;
        } else if (r?.items?.isEmpty ?? true) {
          hasMoreSearchResults = false; // No more items
        }

        emit(state.copyWith(
          status: Status.success,
          searchPostModel: r?.copyWith(items: newPosts),
          hasMore: hasMoreSearchResults,
        ));
      },
    );
  }

  Future<void> _toggleFavoriteStatus(
      Emitter<PostsState> emit, int postId, bool isFavorite) async {
    List<int> updatedFavorites = [...state.favouritePosts ?? []];

    if (isFavorite) {
      updatedFavorites.remove(postId);
      emit(state.copyWith(favouritePosts: updatedFavorites));

      final result = await _postsRepository.removePost(postId: postId);
      result.fold(
        (l) => _fToast.showToast('Error removing favorite'),
        (r) => _fToast.showToast('Favorite removed'),
      );
    } else {
      updatedFavorites.add(postId);
      emit(state.copyWith(favouritePosts: updatedFavorites));

      final result = await _postsRepository.addPost(postId: postId);
      result.fold(
        (l) => _fToast.showToast('Error adding favorite'),
        (r) => _fToast.showToast('Favorite added'),
      );
    }
  }

  Map<String, dynamic> _getFilterParams() {
    final filterState = _filterBloc.state;
    return {
      "channel_id": filterState.selectedChannelId,
      "categories": filterState.categoryList?.map((e) => e.id).join(','),
      "tags": filterState.tagList?.map((e) => e.id).join(','),
      "personalities": filterState.personList?.map((e) => e.id).join(','),
    }..removeWhere((key, value) => value == null || value == '');
  }
}
