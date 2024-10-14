import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:echoapp/application/app/app_bloc.dart';
import 'package:echoapp/domain/user/user_model.dart';
import 'package:echoapp/infrastructure/auth_repository.dart';
import 'package:echoapp/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        register: (e) async {
          emit(state.copyWith(status: Status.loading));
          final result = await _authRepository.register(userModel: e.userModel);

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)), (r) {
            getIt<AppBloc>().add(const AppEvent.userChanged());
            emit(state.copyWith(status: Status.success));
          });
        },
        login: (e) async {
          emit(state.copyWith(status: Status.loading));
          final result = await _authRepository.login(
              phoneNumber: e.phoneNumber, password: e.password);
          log('Login: ${e.phoneNumber} ${e.password}');

          result.fold(
              (l) => emit(state.copyWith(status: Status.error, error: l)), (r) {
            getIt<AppBloc>().add(const AppEvent.userChanged());
            emit(state.copyWith(status: Status.success));
          });
        },
      );
    });
  }
}
