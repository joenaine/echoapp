import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/infrastructure/tags_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tags_event.dart';
part 'tags_state.dart';
part 'tags_bloc.freezed.dart';

@injectable
class TagsBloc extends Bloc<TagsEvent, TagsState> {
  final TagsRepository _tagsRepository;
  final FToastService _fToast;
  int page = 1;
  final int limit = 10; // Define the limit for each page
  bool _isFetching = false;
  bool hasMore = true;

  TagsBloc(this._tagsRepository, this._fToast) : super(TagsState.initial()) {
    on<TagsEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          // Only return early if already fetching the same search term
          if (_isFetching && e.search == state.search) return;

          _isFetching = true;

          // Reset state if it's a new search
          if (e.search != state.search) {
            page = 1;
            hasMore = true;
            emit(state.copyWith(
              categories: [],
              status: Status.loading,
              search: e.search ?? '', // Update search state
            ));
          }

          // Fetch tags with the current search query, page, and limit
          final result = await _tagsRepository.getTags(
            search: e.search, // Use current search from the event
            page: page,
          );

          result.fold(
            (l) {
              _isFetching = false;
              emit(state.copyWith(status: Status.error, error: l));
            },
            (r) {
              _isFetching = false;

              // If the number of items returned is less than the limit, set hasMore to false
              if (r == null || r.length < limit) {
                hasMore = false;
              }

              // Update state with the new categories
              List<CategoryModel>? newCategories = [
                ...?state.categories,
                ...r ?? []
              ];
              emit(state.copyWith(
                status: Status.success,
                categories: newCategories,
              ));

              // Increment page only if more data is available
              if (r != null && r.isNotEmpty) {
                page++;
              }
            },
          );
        },
        fetchFavourites: (_) async {
          final result = await _tagsRepository.getTagsFavourite();

          result.fold(
            (l) => emit(state.copyWith(status: Status.error, error: l)),
            (r) => emit(state.copyWith(
              status: Status.success,
              categoriesFavorite: r,
              selectedCategories: r!.map((e) => e.id!).toList(),
            )),
          );
        },
        addTag: (e) async {
          List<int> list = [...?state.selectedCategories];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _tagsRepository.removeTag(categoryId: e.id);
            result.fold(
              (l) => _fToast.showToast('Ошибка'),
              (r) => _fToast.showToast(r),
            );
          } else {
            list.add(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _tagsRepository.addTag(categoryId: e.id);
            result.fold(
              (l) => _fToast.showToast('Ошибка'),
              (r) => _fToast.showToast(r),
            );
          }
        },
      );
    });
  }
}
