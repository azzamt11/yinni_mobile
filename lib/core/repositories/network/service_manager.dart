import 'package:yinni_mobile/core/repositories/network/service_logging_interceptor.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/header_interceptor.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/json_converter.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:chopper/chopper.dart';

class ServiceManager {
  ServiceManager._(
    String baseUrl,
    JsonModelConverter converter,
    List<ChopperService> services,
    AuthUsecase authUsecase,
  ) {
    client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      interceptors: [
        HeaderInterceptor(authUsecase),
        ServiceLoggingInterceptor()
      ],
      converter: converter,
      errorConverter: converter,
      services: services,
    );
  }

  static ServiceManager create(
    String baseUrl,
    JsonModelConverter converter,
    List<ChopperService> services,
    AuthUsecase authUsecase,
  ) =>
      ServiceManager._(baseUrl, converter, services, authUsecase);

  late final ChopperClient client;
}
