import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';
import 'package:yinni_mobile/features/main/domain/repository/home_repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository)
    : super(InitialHomeState());

  static HomeCubit create(BuildContext context) =>
    HomeCubit(injector.get());

  final HomeRepository _repository;

  Future<void> fetch({
    int? page,
    int? pageSize,
    String? category,
    String? brand,
    int? minPrice,
    int? maxPrice,
    double? minRating,
    String? seller,
    String? sortBy,
    String? sortOrder,
    String? searchQuery,
  }) async {
    emit(LoadingHomeState());
    try {
      final response = await _repository.fetch(
        page: page,
        pageSize: pageSize,
        category: category,
        brand: brand,
        minPrice: minPrice,
        maxPrice: maxPrice,
        minRating: minRating,
        seller: seller,
        sortBy: sortBy,
        sortOrder: sortOrder,
        searchQuery: searchQuery,
      );
      if (response.code == 200) {
        emit(LoadedHomeState(
          products: response.data.products,
          total: response.data.total,
          page: response.data.page,
          pageSize: response.data.pageSize,
          ));
      } else {
        emit(ErrorHomeState(
          error: HomeError(
            message: response.message,
            isOffline: response.message.toString().toLowerCase().contains("socket")
          ),
          
        ));
      }
    } catch(e) {
      emit(ErrorHomeState(
        error: HomeError(
          message: e.toString(),
          isOffline: e.toString().toLowerCase().contains("socket")
        ),
      ));
    }
  }

  Future<void> getById(int id) async {
    emit(LoadingHomeState());
    try {
      final response = await _repository.getById(id);
      if (response.code == 200) {
        emit(LoadedHomeState(
          products: const [],
          selectedProduct: response.data,
        ));
      } else {
        emit(ErrorHomeState(
          error: HomeError(
            message: response.message,
            isOffline: response.message.toString().toLowerCase().contains("socket")
          )
        ));
      }
    } catch(e) {
      emit(ErrorHomeState(
        error: HomeError(
          message: e.toString(),
          isOffline: e.toString().toLowerCase().contains("socket")
        ),
      ));
    }
  }
}


class HomeError {

  String? message;
  bool? isOffline;

  HomeError({
    required this.message,
    required this.isOffline
  });
}
