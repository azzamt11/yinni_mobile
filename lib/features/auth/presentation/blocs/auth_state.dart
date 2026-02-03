part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {

  const factory AuthState.initial() = InitialAuthState;

  const factory AuthState.loading({
    required Auth? loadingAuth
  }) = LoadingAuthState;

  const factory AuthState.loaded({
    required Auth? data
  }) = LoadedAuthState;

  const factory AuthState.error({
    required Auth? errorAuth,
    required bool? offline
  }) = ErrorAuthState;
  
}