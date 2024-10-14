import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/infrastructure/categories_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository _categoriesRepository;
  final FToastService _fToast;
  CategoriesBloc(this._categoriesRepository, this._fToast)
      : super(CategoriesState.initial()) {
    on<CategoriesEvent>((event, emit) async {
      await event.map(
        fetch: (value) async {
          emit(state.copyWith(status: Status.loading));
          final result = await _categoriesRepository.getCategories();

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) =>
                  emit(state.copyWith(status: Status.success, categories: r)));
        },
        addCategory: (e) async {
          List<int> list = [...state.selectedCategories ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result =
                await _categoriesRepository.removeCategory(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          } else {
            list.add(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result =
                await _categoriesRepository.addCategory(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          }
        },
      );
    });
  }
}
