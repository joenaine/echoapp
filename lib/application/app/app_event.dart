part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userChanged() = _UserChanged;
  const factory AppEvent.logOut({BuildContext? context}) = _LogOut;
}
