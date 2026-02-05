part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {

  const factory AuthState.initial() = InitialAuthState;

  const factory AuthState.loading() = LoadingAuthState;

  const factory AuthState.loaded({
    required UserData data
  }) = LoadedAuthState;

  const factory AuthState.error({
    required Error? error,
  }) = ErrorAuthState;
  
}