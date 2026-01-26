import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:chopper/chopper.dart';

part 'home_service.chopper.dart';

@ChopperApi(baseUrl: '/home')
abstract class HomeService extends ChopperService {
  static HomeService create([ChopperClient? client]) => _$HomeService(client);

  @Get(path: '/all')
  Future<Response<productApiResponse>> fetch();

}
