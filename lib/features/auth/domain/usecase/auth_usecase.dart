import 'dart:async';
import 'package:chopper/chopper.dart';

class AuthUsecase {
  String? _cachedToken;

  Future<void> initializeToken() async {
    try {
      _cachedToken = /*await AuthHelper.getToken();*/ "---";
    } catch (e) {
      _cachedToken = null;
    }
  }

  String? get cachedToken => _cachedToken;

  FutureOr<Request> addAuthHeaderInterceptor(Request request) async {
    if(_cachedToken == null) {
      await initializeToken();
    }

    if(_cachedToken != null) {
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
