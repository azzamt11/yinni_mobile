import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';

class AuthUsecase {
  final AppDatabase _db;
  String? _cachedToken;
  static const String _hasOpenedBeforeKey = 'has_opened_before';

  AuthUsecase(this._db);

  static AuthUsecase create() =>
    AuthUsecase(injector.get());

  Future<void> initializeToken() async {
    try {
      _cachedToken = await _db.getToken('access_token');
    } catch (e) {
      _cachedToken = null;
    }
  }

  String? get cachedToken => _cachedToken;

  Future<void> setToken(String token) async {
    await _db.saveToken('access_token', token);
    _cachedToken = token;
  }

  Future<void> clearToken() async {
    await _db.clearAuth();
    _cachedToken = null;
  }

  Future<bool> hasOpenedBefore() async {
    final value = await _db.getToken(_hasOpenedBeforeKey);
    return value == 'true';
  }

  Future<void> markOpenedBefore() async {
    await _db.saveToken(_hasOpenedBeforeKey, 'true');
  }

  FutureOr<Request> addAuthHeaderInterceptor(Request request) async {
    if (_cachedToken == null) {
      await initializeToken();
    }

    if (_cachedToken != null) {
      request = request.copyWith(
        headers: {
          ...request.headers,
          'Authorization': 'Bearer $_cachedToken',
        },
      );
    }

    if (request.multipart) {
      request = request.copyWith(headers: {
        ...request.headers,
        'Content-Type': 'multipart/form-data',
      });
    }

    return request;
  }
}
