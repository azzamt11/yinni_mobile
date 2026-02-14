part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading({
    int? page
  }) = LoadingHomeState;

  const factory HomeState.loaded({
    required List<ProductData> products,
    ProductData? selectedProduct,
    int? total,
    int? page,
    int? pageSize,
  }) = LoadedHomeState;

  const factory HomeState.error({
    required HomeError error,
  }) = ErrorHomeState;
  
}
