part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.authenticated() = _Authenticated;
  const factory AppState.unauthenticated() = _Unauthenticated;
  const factory AppState.error({String? error}) = _Error;
}
