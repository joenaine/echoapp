part of 'auth_bloc.dart';

enum Status { initial, loading, success, error }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({Status? status, String? error}) = _AuthState;
  factory AuthState.initial() =>
      const AuthState(status: Status.initial, error: null);
}
