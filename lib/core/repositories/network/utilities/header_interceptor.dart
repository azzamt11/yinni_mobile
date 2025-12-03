import 'dart:async';
import 'package:bin_mahfudz_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements Interceptor {
  final AuthUsecase authUsecase;

  HeaderInterceptor(this.authUsecase);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final Request original = chain.request;

    final Request updated = await authUsecase.addAuthHeaderInterceptor(original);
    final Response<BodyType> response = await chain.proceed(updated);

    return response;
  }
}
