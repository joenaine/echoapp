import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/infrastructure/person_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personality_event.dart';
part 'personality_state.dart';
part 'personality_bloc.freezed.dart';

@injectable
class PersonalityBloc extends Bloc<PersonalityEvent, PersonalityState> {
  final PersonRepository _personRepository;
  final FToastService _fToast;

  int page = 1;
  final int limit = 10; // Define the limit for each page
  bool _isFetching = false;
  bool hasMore = true;

  PersonalityBloc(this._personRepository, this._fToast)
      : super(PersonalityState.initial()) {
    on<PersonalityEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          // Only return early if already fetching the same search term
          if (_isFetching && e.search == state.search) return;

          // Determine if this is a pagination fetch
          final isPagination = e.search == state.search && page > 1;

          _isFetching = true;

          if (e.search != state.search) {
            // Reset state for a new search
            page = 1;
            hasMore = true;
            emit(state.copyWith(
              categories: [],
              status: Status.loading,
              isPaginating: false,
              search: e.search ?? '',
            ));
          } else if (isPagination) {
            // Pagination fetch
            emit(state.copyWith(isPaginating: true));
          } else {
            // Initial fetch or refresh
            emit(state.copyWith(
              status: Status.loading,
              isPaginating: false,
            ));
          }

          final result = await _personRepository.getPersonalities(
            search: e.search,
            page: page,
          );

          result.fold(
            (l) {
              _isFetching = false;
              emit(state.copyWith(
                status: Status.error,
                isPaginating: false,
                error: l,
              ));
            },
            (r) {
              _isFetching = false;

              if (r == null || r.length < limit) {
                hasMore = false;
              }

              List<CategoryModel>? newCategories = [
                ...?state.categories,
                ...r ?? []
              ];

              emit(state.copyWith(
                status: Status.success,
                isPaginating: false,
                categories: newCategories,
              ));

              if (r != null && r.isNotEmpty) {
                page++;
              }
            },
          );
        },
        fetchFavourites: (_) async {
          final result = await _personRepository.getPersonalitiesFavourite();

          result.fold(
            (l) => emit(state.copyWith(status: Status.error, error: l)),
            (r) => emit(state.copyWith(
              status: Status.success,
              categoriesFavorite: r,
              selectedCategories: r!.map((e) => e.id!).toList(),
            )),
          );
        },
        addPerson: (e) async {
          List<int> list = [...state.selectedCategories ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result =
                await _personRepository.removePerson(categoryId: e.id);
            result.fold(
              (l) => _fToast.showToast('Ошибка'),
              (r) => _fToast.showToast(r),
            );
          } else {
            list.add(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _personRepository.addPerson(categoryId: e.id);
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
