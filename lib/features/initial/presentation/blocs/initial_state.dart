part of 'initial_cubit.dart';

@freezed
abstract class InitialState with _$InitialState {
  const factory InitialState.initial({
    bool? showingBanner,
    int? page,
    bool? redirecting
  }) = _InitialInitialState;
  
}
