import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/features/auth/data/models/auth_data.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repository)
    : super(InitialAuthState());

  static AuthCubit create(BuildContext context) =>
    AuthCubit(injector.get());

  final AuthRepository _repository;

  Future<void> signIn(email, password) async {
    emit(LoadingAuthState(
      loadingAuth: Auth(
        data: null,
        loading: true,
        error: null
      )
    ));
    await Future.delayed(const Duration(seconds: 5));
    try {
      final response = await _repository.signIn({
        "email": email,
        "password": password
      });
      if(response.code == 200) {
        emit(LoadedAuthState(
          data: Auth(
            data: response.data.data,
            loading: false,
            error: null
          )
        ));
      } else {
        emit(ErrorAuthState(
          errorAuth: Auth(
            data: null,
            loading: false,
            error: response.message,
          ),
          offline: response.message.toString().toLowerCase().contains("socket")
        ));
      }
    } catch(e) {
      emit(ErrorAuthState(
        errorAuth: Auth(
          data: null,
          loading: false,
          error: e.toString()
        ),
        offline: e.toString().toLowerCase().contains("socket")
      ));
    }
  }
}

class Auth {
  final AuthData? data;
  final bool loading;
  final String? error;

  Auth({
    required this.data,
    required this.loading,
    required this.error,
  });
}