import 'package:chopper/chopper.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';
import 'package:yinni_mobile/features/main/data/models/product_list_api_response.dart';

part 'home_service.chopper.dart';

@ChopperApi(baseUrl: '/v1')
abstract class HomeService extends ChopperService {
  static HomeService create([ChopperClient? client]) => _$HomeService(client);

  @Get(path: '/products')
  Future<Response<ProductListApiResponse>> fetch({
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('category') String? category,
    @Query('brand') String? brand,
    @Query('min_price') int? minPrice,
    @Query('max_price') int? maxPrice,
    @Query('min_rating') double? minRating,
    @Query('seller') String? seller,
    @Query('sort_by') String? sortBy,
    @Query('sort_order') String? sortOrder,
    @Query('search_query') String? searchQuery,
  }); 

  @Get(path: '/product/{id}')
  Future<Response<ProductData>> getById(@Path("id") int? id);
}
