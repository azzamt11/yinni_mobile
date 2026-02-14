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
  final List<ProductData> _products = <ProductData>[];

  int _currentPage = 1;
  int _pageSize = 10;
  int? _total;
  bool _isLoadingMore = false;

  String? _category;
  String? _brand;
  int? _minPrice;
  int? _maxPrice;
  double? _minRating;
  String? _seller;
  String? _sortBy;
  String? _sortOrder;
  String? _searchQuery;

  bool get isLoadingMore => _isLoadingMore;
  bool get hasMore {
    if (_total == null) return true;
    return _products.length < _total!;
  }

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
    _currentPage = page ?? 1;
    _pageSize = pageSize ?? _pageSize;
    _category = category;
    _brand = brand;
    _minPrice = minPrice;
    _maxPrice = maxPrice;
    _minRating = minRating;
    _seller = seller;
    _sortBy = sortBy;
    _sortOrder = sortOrder;
    _searchQuery = searchQuery;

    emit(LoadingHomeState(page: 1));
    try {
      final response = await _repository.fetch(
        page: _currentPage,
        pageSize: _pageSize,
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
        _products
          ..clear()
          ..addAll(response.data.products);
        _total = response.data.total;
        _currentPage = response.data.page ?? _currentPage;
        _pageSize = response.data.pageSize ?? _pageSize;

        emit(LoadedHomeState(
          products: List<ProductData>.unmodifiable(_products),
          total: response.data.total,
          page: _currentPage,
          pageSize: _pageSize,
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

  Future<void> loadMore() async {
    if (_isLoadingMore || !hasMore) return;
    if (state is! LoadedHomeState) return;

    _isLoadingMore = true;
    emit(LoadingHomeState(page: _currentPage + 1));
    try {
      final nextPage = _currentPage + 1;
      final response = await _repository.fetch(
        page: nextPage,
        pageSize: _pageSize,
        category: _category,
        brand: _brand,
        minPrice: _minPrice,
        maxPrice: _maxPrice,
        minRating: _minRating,
        seller: _seller,
        sortBy: _sortBy,
        sortOrder: _sortOrder,
        searchQuery: _searchQuery,
      );

      if (response.code == 200) {
        _products.addAll(response.data.products);
        _total = response.data.total ?? _total;
        _currentPage = response.data.page ?? nextPage;
        _pageSize = response.data.pageSize ?? _pageSize;

        emit(LoadedHomeState(
          products: List<ProductData>.unmodifiable(_products),
          total: _total,
          page: _currentPage,
          pageSize: _pageSize,
        ));
      } else {
        emit(ErrorHomeState(
          error: HomeError(
            message: response.message,
            isOffline: response.message.toString().toLowerCase().contains("socket"),
          ),
        ));
      }
    } catch (e) {
      emit(ErrorHomeState(
        error: HomeError(
          message: e.toString(),
          isOffline: e.toString().toLowerCase().contains("socket"),
        ),
      ));
    } finally {
      _isLoadingMore = false;
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
