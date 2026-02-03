import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/common/models/api_response.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_in_api_response.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_up_api_response.dart';
import 'package:yinni_mobile/features/auth/data/services/auth_service.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';

class AuthRepository {
  AuthRepository(this._authService, this._authUsecase, this._db);

  static AuthRepository create() =>
      AuthRepository(injector.get(), injector.get(), injector.get());

  final AuthService _authService;
  final AuthUsecase _authUsecase;
  final AppDatabase _db;

  Future<ApiResponse<SignInApiResponse>> signIn(
    Map<String, dynamic> credentials,
  ) async {
    try {
      final response = await _authService.signIn(credentials);

      if (!response.isSuccessful || response.body == null) {
        return ApiResponse<SignInApiResponse>(
          code: response.statusCode,
          message: response.error?.toString() ?? 'Sign in failed',
          data: SignInApiResponse.empty,
        );
      }

      final apiResponse = response.body!;

      if (apiResponse.accessToken?.isNotEmpty == true) {
        await _db.transaction(() async {
          await _authUsecase.setToken(apiResponse.accessToken!);
          await _db.saveUser(apiResponse.data);
        });
      }

      return ApiResponse<SignInApiResponse>(
        code: response.statusCode,
        message: null,
        data: apiResponse,
      );
    } catch (e, s) {
      debugPrint("SignInRepository signIn error: $e");
      debugPrintStack(stackTrace: s);

      return ApiResponse<SignInApiResponse>(
        code: 500,
        message: "An error occurred while signing in.",
        data: SignInApiResponse.empty,
      );
    }
  }

  Future<ApiResponse<SignUpApiResponse>> signUp(
    Map<String, dynamic> credentials,
  ) async {
    try {
      final response = await _authService.signUp(credentials);
      if (!response.isSuccessful || response.body == null) {
        return ApiResponse<SignUpApiResponse>(
          code: response.statusCode,
          message: response.error?.toString() ?? 'Sign up failed',
          data: SignUpApiResponse.empty,
        );
      }

      final apiResponse = response.body!;

      return ApiResponse<SignUpApiResponse>(
        code: response.statusCode,
        message: null,
        data: apiResponse,
      );
    } catch (e, s) {
      debugPrint("SignInRepository signUp error: $e");
      debugPrintStack(stackTrace: s);

      return ApiResponse<SignUpApiResponse>(
        code: 500,
        message: "An error occurred while signing up.",
        data: SignUpApiResponse.empty,
      );
    }
  }
}
