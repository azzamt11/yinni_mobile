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

  int _currentPage = 1;
  static const int _pageSize = 20;

  Future<void> fetch(int page) async {
    _currentPage = page;

    emit(LoadingHomeState(
      loadingHome: Home(
        data: [],
        loading: true,
        error: null,
      ),
    ));

    try {
      final response = await _repository.fetch({
        "page": page,
        "pageSize": _pageSize,
      });

      if (response.code == 200) {
        emit(LoadedHomeState(
          data: Home(
            data: response.data.products,
            loading: false,
            error: null,
          ),
        ));
      } else {
        emit(ErrorHomeState(
          errorHome: Home(
            data: [],
            loading: false,
            error: response.message,
          ),
          offline: response.message
                  ?.toLowerCase()
                  .contains("socket") ??
              false,
        ));
      }
    } catch (e) {
      emit(ErrorHomeState(
        errorHome: Home(
          data: [],
          loading: false,
          error: e.toString(),
        ),
        offline: e.toString().toLowerCase().contains("socket"),
      ));
    }
  }

  Future<void> reload() async {
    emit(LoadingHomeState(
      loadingHome: Home(
        data: [],
        loading: true,
        error: null,
      ),
    ));

    try {
      final response = await _repository.fetch({
        "page": _currentPage,
        "pageSize": _pageSize,
      });

      if (response.code == 200) {
        emit(LoadedHomeState(
          data: Home(
            data: response.data.products,
            loading: false,
            error: null,
          ),
        ));
      } else {
        emit(ErrorHomeState(
          errorHome: Home(
            data: [],
            loading: false,
            error: response.message,
          ),
          offline: response.message
                  ?.toLowerCase()
                  .contains("socket") ??
              false,
        ));
      }
    } catch (e) {
      emit(ErrorHomeState(
        errorHome: Home(
          data: [],
          loading: false,
          error: e.toString(),
        ),
        offline: e.toString().toLowerCase().contains("socket"),
      ));
    }
  }
}

class Home {
  final List<ProductData> data;
  final bool loading;
  final String? error;

  Home({
    required this.data,
    required this.loading,
    required this.error,
  });
}