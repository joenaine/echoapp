import 'package:bloc/bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/domain/profile/profile_model.dart';
import 'package:echoapp/infrastructure/profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        fetch: (_) async {
          emit(state.copyWith(status: Status.loading));
          final result = await _profileRepository.getProfile();
          result.fold(
              (l) => emit(state.copyWith(error: l, status: Status.error)),
              (r) => emit(
                  state.copyWith(status: Status.success, profileModel: r)));
        },
      );
    });
  }
}
