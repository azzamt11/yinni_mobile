import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/common/models/api_response.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';
import 'package:yinni_mobile/features/main/data/models/product_list_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/product_service.dart';

class HomeRepository {
  HomeRepository(this._homeService, this._db);

  static HomeRepository create() =>
      HomeRepository(injector.get(), injector.get());

  final ProductService _homeService;
  final AppDatabase _db;

  Future<ApiResponse<ProductListApiResponse>> fetch(
    Map<String, dynamic> params,
  ) async {
    try {
      final response = await _homeService.fetch(params);

      if (!response.isSuccessful || response.body == null) {
        return ApiResponse<ProductListApiResponse>(
          code: response.statusCode,
          message: response.error?.toString() ?? 'Failed to fetch product list',
          data: ProductListApiResponse.empty,
        );
      }

      final apiResponse = response.body!;

      if (apiResponse.products.isNotEmpty == true) {
        await _db.transaction(() async {
          await _db.saveProducts(apiResponse.products);
        });
      }

      return ApiResponse<ProductListApiResponse>(
        code: response.statusCode,
        message: null,
        data: apiResponse,
      );
    } catch (e, s) {
      debugPrint("SignInRepository signIn error: $e");
      debugPrintStack(stackTrace: s);

      return ApiResponse<ProductListApiResponse>(
        code: 500,
        message: "An error occurred while fetching product list.",
        data: ProductListApiResponse.empty,
      );
    }
  }
}
