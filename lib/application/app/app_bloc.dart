import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:echoapp/core/constants/constant_variables.dart';
import 'package:echoapp/core/local_storage.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const _Initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        userChanged: (value) async {
          try {
            String? accessToken =
                await LocalStorage.instance.get(accessTokenKey);

            if (accessToken != null && accessToken.isNotEmpty) {
              emit(const AppState.authenticated());
            } else {
              emit(const AppState.unauthenticated());
              print('Unauthenticated: No user credentials found.');
            }
          } catch (error) {
            log('Error in userChanged: $error');
            emit(AppState.error(error: 'Failed to change user state $error'));
          }
        },
        logOut: (e) async {
          await LocalStorage.instance.deleteAll();
          add(const AppEvent.userChanged());
          AutoRouter.of(e.context!).replace(const AuthRoute());
        },
      );
    });
  }
}
