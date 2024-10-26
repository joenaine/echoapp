import 'package:bloc/bloc.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/domain/channel/channel_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@lazySingleton
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterState.initial()) {
    on<FilterEvent>((event, emit) {
      event.map(
        addChannel: (e) {
          List<ChannelModel> list = [...state.channelList ?? []];

          if (list.any((element) => element.id == e.channel!.id)) {
            list.removeWhere((element) => element.id == e.channel!.id);
          } else {
            list.add(e.channel!);
          }

          emit(state.copyWith(channelList: list));
        },
        addCategory: (e) {
          List<CategoryModel> list = [...state.categoryList ?? []];

          if (list.any((element) => element.id == e.category!.id)) {
            list.removeWhere((element) => element.id == e.category!.id);
          } else {
            list.add(e.category!);
          }

          emit(state.copyWith(categoryList: list));
        },
        addPersonality: (e) {
          List<CategoryModel> list = [...state.personList ?? []];

          if (list.any((element) => element.id == e.person!.id)) {
            list.removeWhere((element) => element.id == e.person!.id);
          } else {
            list.add(e.person!);
          }

          emit(state.copyWith(personList: list));
        },
        addTag: (e) {
          List<CategoryModel> list = [...state.tagList ?? []];

          if (list.any((element) => element.id == e.tag!.id)) {
            list.removeWhere((element) => element.id == e.tag!.id);
          } else {
            list.add(e.tag!);
          }

          emit(state.copyWith(tagList: list));
        },
      );
    });
  }
}
