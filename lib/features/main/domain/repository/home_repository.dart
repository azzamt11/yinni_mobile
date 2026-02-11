
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/common/models/api_response.dart';
import 'package:yinni_mobile/features/main/data/models/product_list_api_response.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';
import 'package:yinni_mobile/features/main/data/services/home_service.dart';

class HomeRepository {
  HomeRepository(this._homeService);

  static HomeRepository create() =>
      HomeRepository(injector.get());

  final HomeService _homeService;

  Future<ApiResponse<ProductListApiResponse>> fetch(
    {
    int? page,
    int? pageSize,
    String? category,
    String? brand,
    int? minPrice,
    int? maxPrice,
    double? minRating,
    String? seller,
    String? sortBy,
    String? sortOrder,
    String? searchQuery,
  }
  ) async {
    try {
      final response = await _homeService.fetch(
        page: page,
        pageSize: pageSize,
        category: category,
        brand: brand,
        minPrice: minPrice,
        maxPrice: maxPrice,
        minRating: minRating,
        seller: seller,
        sortBy: sortBy,
        sortOrder: sortOrder,
        searchQuery: searchQuery,
      );

      if (!response.isSuccessful || response.body == null) {
        return ApiResponse<ProductListApiResponse>(
          code: response.statusCode,
          message: response.error?.toString(),
          data: ProductListApiResponse.empty,
        );
      }

      return ApiResponse<ProductListApiResponse>(
        code: response.statusCode,
        message: null,
        data: response.body!,
      );
    } catch (e) {
      return ApiResponse<ProductListApiResponse>(
        code: 500,
        message: e.toString(),
        data: ProductListApiResponse.empty,
      );
    }
  }

  Future<ApiResponse<ProductData>> getById(int id) async {
    try {
      final response = await _homeService.getById(id);
      
      if (!response.isSuccessful || response.body == null) {
        return ApiResponse<ProductData>(
          code: response.statusCode,
          message: response.error?.toString(),
          data: ProductData.empty,
        );
      }

      return ApiResponse<ProductData>(
        code: response.statusCode,
        message: null,
        data: response.body!,
      );
    } catch (e) {
      return ApiResponse<ProductData>(
        code: 500,
        message: e.toString(),
        data: ProductData.empty,
      );
    }
  }
}
