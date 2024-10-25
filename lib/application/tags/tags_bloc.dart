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
  TagsBloc(this._tagsRepository, this._fToast) : super(TagsState.initial()) {
    on<TagsEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(state.copyWith(status: Status.loading));
          final result = await _tagsRepository.getTags(search: e.search);

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) =>
                  emit(state.copyWith(status: Status.success, categories: r)));
        },
        fetchFavourites: (_) async {
          final result = await _tagsRepository.getTagsFavourite();

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) => emit(state.copyWith(
                  status: Status.success,
                  categoriesFavorite: r,
                  selectedCategories: r!.map((e) => e.id!).toList())));
        },
        addTag: (e) async {
          List<int> list = [...state.selectedCategories ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _tagsRepository.removeTag(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          } else {
            list.add(e.id);
            emit(state.copyWith(selectedCategories: list));
            final result = await _tagsRepository.addTag(categoryId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          }
        },
      );
    });
  }
}
