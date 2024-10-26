import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/domain/channel/channel_model.dart';
import 'package:echoapp/infrastructure/channel_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'channels_event.dart';
part 'channels_state.dart';
part 'channels_bloc.freezed.dart';

@injectable
class ChannelsBloc extends Bloc<ChannelsEvent, ChannelsState> {
  final ChannelsRepository _channelsRepository;
  final FToastService _fToast;
  bool _isFetchingNextPage = false;
  ChannelsBloc(this._channelsRepository, this._fToast)
      : super(ChannelsState.initial()) {
    on<ChannelsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async {
          emit(state.copyWith(status: Status.loading, currentPage: 1));

          final result = await _channelsRepository.getChannels(page: 1);

          result.fold((l) {
            log('Error: $l');
            emit(state.copyWith(status: Status.error, error: l));
          },
              (r) => emit(state.copyWith(
                    status: Status.success,
                    channelList: r ?? [],
                  )));
        },
        fetchNextPage: (_) async {
          // If already fetching or no more pages, return early
          if (_isFetchingNextPage || state.hasReachedMax) return;

          _isFetchingNextPage = true; // Set flag to prevent concurrent fetching
          emit(state.copyWith(status: Status.loading));

          final result = await _channelsRepository.getChannels(
            page: state.currentPage + 1,
          );

          result.fold(
            (error) {
              log('Error: $error');
              emit(state.copyWith(status: Status.error, error: error));
            },
            (channels) {
              if (channels != null && channels.isEmpty) {
                emit(state.copyWith(
                  status: Status.success,
                  hasReachedMax: false,
                ));
              }
              if (channels != null && channels.isNotEmpty) {
                emit(state.copyWith(
                  status: Status.success,
                  channelList: List.from(state.channelList ?? [])
                    ..addAll(channels),
                  currentPage: state.currentPage + 1,
                  hasReachedMax: false,
                ));
              } else {
                emit(state.copyWith(hasReachedMax: true));
              }
            },
          );

          _isFetchingNextPage = false; // Reset flag after fetching
        },
        fetchFavourites: (e) async {
          final result = await _channelsRepository.getChannelsFavourite();

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) => emit(state.copyWith(
                  favourites: r,
                  status: Status.success,
                  favouriteChannels: r!.map((e) => e.id!).toList())));
        },
        addChannel: (e) async {
          List<int> list = [...state.favouriteChannels ?? []];

          if (list.contains(e.id)) {
            list.remove(e.id);
            emit(state.copyWith(favouriteChannels: list));
            final result =
                await _channelsRepository.removeChannel(postId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          } else {
            list.add(e.id);
            emit(state.copyWith(favouriteChannels: list));
            final result =
                await _channelsRepository.addChannel(channelId: e.id);
            result.fold((l) => _fToast.showToast('Ошибка'),
                (r) => _fToast.showToast(r));
          }
        },
      );
    });
  }
}
