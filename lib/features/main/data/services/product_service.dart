import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:chopper/chopper.dart';

part 'product_service.chopper.dart';

@ChopperApi(baseUrl: '/home')
abstract class ProductService extends ChopperService {
  static ProductService create([ChopperClient? client]) => _$ProductService(client);
  @Get(path: '/v1/products')
  Future<Response<productApiResponse>> fetch();

}
