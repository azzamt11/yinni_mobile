import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/features/main/domain/repository/home_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepository)
      : super(InitialHomeState());

  static HomeCubit create(BuildContext context) =>
      HomeCubit(injector.get());

  final HomeRepository _homeRepository;

  Future<void> fetch() async {
    emit(LoadingHomeState(
      loadingProducts: [],
    ));
    await Future.delayed(const Duration(seconds: 5));
    try {
      final response = await _homeRepository.fetch();
      if(response.code == 200) {
        debugPrint("PACKAGE BUG STEP 0 : response.code == 200 ==> response = $response");
        emit(LoadedHomeState(
          products: response.data
        ));
      } else {
        debugPrint("PACKAGE BUG STEP 1 : response.code != 200 ==> response = $response, response?.message = ${response.message}");
        emit(ErrorHomeState(
          errorProducts: [],
          offline: response.message.toString().toLowerCase().contains("socket")
        ));
      }
    } catch(e) {
      emit(ErrorHomeState(
        errorProducts: [],
        offline: e.toString().toLowerCase().contains("socket")
      ));
    }
  }
  
  Future<void> reload({Duration? delay}) async {
    //not implemented yet
  }
}