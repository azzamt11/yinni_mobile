import 'package:bin_mahfudz_mobile/core/base/di/dependency_injection.dart';
import 'package:bin_mahfudz_mobile/features/main/domain/repository/home_repository.dart';
import 'package:bin_mahfudz_mobile/features/main/presentation/view_models/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      loadingHome: Home(
        promo: null,
        bankAccounts: [],
        youtube: null,
        loading: true,
        error: null
      )
    ));
    await Future.delayed(const Duration(seconds: 5));
    //try {
      final response = await _homeRepository.fetch();
      if(response?.code == 200) {
        debugPrint("PACKAGE BUG STEP 0 : response.code == 200 ==> response = $response");
        emit(LoadedHomeState(
          home: Home.fromHomeApiResponse(response)
        ));
      } else {
        debugPrint("PACKAGE BUG STEP 1 : response.code != 200 ==> response = $response, response?.message = ${response?.message}");
        emit(ErrorHomeState(
          errorHome: Home(
            promo: null, 
            bankAccounts: [],
            youtube: null, 
            loading: false, 
            error: response?.message,
          ),
          offline: response?.message.toString().toLowerCase().contains("socket")
        ));
      }
    // } catch(e) {
    //   emit(ErrorHomeState(
    //     errorHome: Home(
    //       promo: null, 
    //       youtube: null, 
    //       loading: false,
    //       error: e.toString()
    //     ),
    //     offline: e.toString().toLowerCase().contains("socket")
    //   ));
    // }
  }
  
  Future<void> reload({Duration? delay}) async {
    //not implemented yet
  }
}