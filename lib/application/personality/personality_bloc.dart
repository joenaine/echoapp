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
  PersonalityBloc(this._personRepository, this._fToast)
      : super(PersonalityState.initial()) {
    on<PersonalityEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(state.copyWith(status: Status.loading));
          final result =
              await _personRepository.getPersonalities(search: e.search);

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) =>
                  emit(state.copyWith(status: Status.success, categories: r)));
        },
        fetchFavourites: (_) async {
          final result = await _personRepository.getPersonalitiesFavourite();

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) => emit(state.copyWith(
                  status: Status.success,
                  categoriesFavorite: r,
                  selectedCategories: r!.map((e) => e.id!).toList())));
        },
        addPerson: (e) async {
          List<int> list = [...state.selectedCategories ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result =
                await _personRepository.removePerson(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          } else {
            list.add(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _personRepository.addPerson(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          }
        },
      );
    });
  }
}
