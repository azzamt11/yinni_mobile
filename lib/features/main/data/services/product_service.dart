import 'package:chopper/chopper.dart';
import 'package:yinni_mobile/features/main/data/models/product_list_api_response.dart';

part 'product_service.chopper.dart';

@ChopperApi(baseUrl: '/home')
abstract class ProductService extends ChopperService {
  static ProductService create([ChopperClient? client]) => _$ProductService(client);
  @Get(path: '/v1/products')
  Future<Response<ProductListApiResponse>> fetch(@Query() Map<String, dynamic> params);

}
