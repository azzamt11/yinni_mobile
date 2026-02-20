import 'package:yinni_mobile/core/repositories/network/service_logging_interceptor.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/header_interceptor.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/json_converter.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:chopper/chopper.dart';

class ServiceManager {
  ServiceManager._(
    String baseUrl,
    JsonModelConverter converter,
    AuthUsecase authUsecase,
  ) {
    // Helper to create a client for a specific port
    ChopperClient createClient(String port) => ChopperClient(
      baseUrl: Uri.parse("$baseUrl:$port"),
      interceptors: [
        HeaderInterceptor(authUsecase), 
        ServiceLoggingInterceptor()
      ],
      converter: converter,
      errorConverter: converter,
    );

    authClient = createClient('8100');
    productClient = createClient('8102');
    promptClient = createClient('8103');
  }

  late final ChopperClient authClient;
  late final ChopperClient productClient;
  late final ChopperClient promptClient;

  static ServiceManager create(
    String baseUrl,
    JsonModelConverter converter,
    AuthUsecase authUsecase,
  ) => ServiceManager._(baseUrl, converter, authUsecase);
}