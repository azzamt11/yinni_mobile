import 'package:yinni_mobile/core/base/configs/configs.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';
import 'package:yinni_mobile/core/repositories/cache/image_cache_manager.dart';
import 'package:yinni_mobile/core/repositories/network/service_manager.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/json_converter.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/home_service.dart';
import 'package:yinni_mobile/features/main/domain/repository/home_repository.dart';
import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';

const namedService = 'service';

final injector = GetIt.instance;

extension GetItExtension on GetIt {
  void registerService<T extends ChopperService>(
    FactoryFunc<T> create, {
    String? instanceName,
  }) {
    final T service = create();
    this.get<List<ChopperService>>(instanceName: namedService).add(service);
    registerSingleton<T>(service);
  }
}

Future<void> injectServices() async {
  injector.registerSingleton<Map<Type, JsonFactory>>(<Type, JsonFactory>{});
  injector.get<Map<Type, JsonFactory>>().addAll({
    productApiResponse: productApiResponse.fromJsonFactory,
  });
  injector.registerLazySingleton<JsonModelConverter>(() => JsonModelConverter(
    injector.get(),
  ));
  
  injector.registerLazySingleton<ImageUrlCacheManager>(() => ImageUrlCacheManager.create());
  injector.registerLazySingleton<AuthUsecase>(() => AuthUsecase());
  injector.registerSingleton<List<ChopperService>>(<ChopperService>[], instanceName: namedService);
  injector.registerService(HomeService.create);

  injector.registerLazySingleton<ServiceManager>(() => ServiceManager.create(
    Configs.baseUrl,
    injector.get<JsonModelConverter>(),
    injector.get<List<ChopperService>>(instanceName: namedService),
    injector.get<AuthUsecase>(),
  ));

  injector.get<ServiceManager>();

  injector.registerLazySingleton<HomeRepository>(() => HomeRepository(
    injector.get<HomeService>(),
    injector.get<AppDatabase>(),
  ));
}
