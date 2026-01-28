part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading({
    required List<ProductData>? loadingProducts
  }) = LoadingHomeState;

  const factory HomeState.loaded({
    required List<ProductData>? products
  }) = LoadedHomeState;

  const factory HomeState.error({
    required List<ProductData>? errorProducts,
    required bool? offline
  }) = ErrorHomeState;
  
}