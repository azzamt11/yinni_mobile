part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading({
    required Home? loadingHome
  }) = LoadingHomeState;

  const factory HomeState.loaded({
    required Home? data
  }) = LoadedHomeState;

  const factory HomeState.error({
    required Home? errorHome,
    required bool? offline
  }) = ErrorHomeState;
  
}