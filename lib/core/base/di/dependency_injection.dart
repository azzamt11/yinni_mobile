import 'package:yinni_mobile/core/base/configs/configs.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';
import 'package:yinni_mobile/core/repositories/cache/volume/image_cache_manager.dart';
import 'package:yinni_mobile/core/repositories/network/service_manager.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/json_converter.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_in_api_response.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_up_api_response.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/features/main/data/models/product_list_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/product_service.dart';
import 'package:yinni_mobile/features/main/domain/repository/home_repository.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> injectServices() async {
  // --- 1. JSON Serialization Setup ---
  injector.registerSingleton<Map<Type, JsonFactory>>(<Type, JsonFactory>{});
  
  // --- 2. Register Model Factories ---
  injector.get<Map<Type, JsonFactory>>().addAll({
    ProductListApiResponse: ProductListApiResponse.fromJson,
    SignInApiResponse: SignInApiResponse.fromJson,
    SignUpApiResponse: SignUpApiResponse.fromJson,
  });

  injector.registerLazySingleton<JsonModelConverter>(() => JsonModelConverter(
    injector.get<Map<Type, JsonFactory>>(),
  ));

  // --- 3. Database & Auth Logic ---
  injector.registerSingleton<AppDatabase>(AppDatabase());

  // AuthUsecase needs the database to retrieve/save tokens.
  injector.registerLazySingleton<AuthUsecase>(() => AuthUsecase(
    injector.get<AppDatabase>(),
  ));

  injector.registerLazySingleton<ImageUrlCacheManager>(() => ImageUrlCacheManager.create());

  // --- 4. Network Orchestration (ServiceManager) ---
  injector.registerLazySingleton<ServiceManager>(() => ServiceManager.create(
    Configs.baseUrl,
    injector.get<JsonModelConverter>(),
    injector.get<AuthUsecase>(),
  ));

  // --- 5. Chopper Services (Client-Specific) ---
  final sm = injector.get<ServiceManager>();

  // Product Client (Port 8002)
  injector.registerSingleton<ProductService>(
    ProductService.create(sm.productClient),
  );

  // // Auth Client (Port 8000)
  // injector.registerSingleton<AuthService>(
  //   AuthService.create(sm.authClient),
  // );
  
  // // Prompt Client (Port 8003)
  // injector.registerSingleton<PromptService>(
  //   PromptService.create(sm.promptClient),
  // );

  // --- 6. Repositories ---
  injector.registerLazySingleton<HomeRepository>(() => HomeRepository(
    injector.get<ProductService>(),
    injector.get<AppDatabase>(),
  ));
}