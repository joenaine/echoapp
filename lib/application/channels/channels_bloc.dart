import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
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
  ChannelsBloc(this._channelsRepository) : super(ChannelsState.initial()) {
    on<ChannelsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async {
          emit(state.copyWith(status: Status.loading));

          final result = await _channelsRepository.getChannels();

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)),
              (r) =>
                  emit(state.copyWith(status: Status.success, postModel: r)));
        },
        fetchFavourites: (value) {},
        addChannel: (value) {},
      );
    });
  }
}
