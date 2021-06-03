part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loggedIn() = _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
}
