import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/features/auth/data/models/user_data.dart';
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
    emit(LoadingAuthState());
    await Future.delayed(const Duration(seconds: 5));
    try {
      final response = await _repository.signIn({
        "email": email,
        "password": password
      });
      if(response.code == 200) {
        emit(LoadedAuthState(
          data: response.data.user,
          ));
      } else {
        emit(ErrorAuthState(
          error: Error(
            message: response.message,
            isOffline: response.message.toString().toLowerCase().contains("socket")
          ),
          
        ));
      }
    } catch(e) {
      emit(ErrorAuthState(
        error: Error(
          message: e.toString(),
          isOffline: e.toString().toLowerCase().contains("socket")
        ),
      ));
    }
  }

  Future<void> signUp(email, password, name) async {
    emit(LoadingAuthState());
    await Future.delayed(const Duration(seconds: 5));
    try {
      final response = await _repository.signUp({
        "email": email,
        "password": password,
        "name": name
      });
      if(response.code == 200) {
        emit(LoadedAuthState(
          data: UserData(id: response.data.userId ?? 0),
        ));
      } else {
        emit(ErrorAuthState(
          error: Error(
            message: response.message,
            isOffline: response.message.toString().toLowerCase().contains("socket")
          )
        ));
      }
    } catch(e) {
      emit(ErrorAuthState(
        error: Error(
          message: e.toString(),
          isOffline: e.toString().toLowerCase().contains("socket")
        ),
      ));
    }
  }
}


class Error {

  String? message;
  bool? isOffline;

  Error({
    required this.message,
    required this.isOffline
  });
}