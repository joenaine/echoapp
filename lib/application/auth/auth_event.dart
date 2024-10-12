part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register({required UserModel userModel}) = _Register;
  const factory AuthEvent.login({
    required String phoneNumber,
    required String password,
  }) = _Login;
}
