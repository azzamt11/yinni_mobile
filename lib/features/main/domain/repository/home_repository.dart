import 'package:flutter/foundation.dart';
import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/product_service.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

class HomeRepository {
  HomeRepository(this._productService, this._db);

  final ProductService _productService;
  final AppDatabase _db;

  Future<ProductApiResponse> fetch({bool isRefresh = false}) async {
    try {
      final response = await _productService.fetch();
      final apiResponse = ProductApiResponse.fromChopperResponse(response);

      // 1. If network is successful, update the cache
      if (response.isSuccessful && apiResponse.data != null) {
        await _db.saveProducts(apiResponse.data!);
        return apiResponse;
      }
    } catch (e) {
      debugPrint("HomeRepository fetch error: $e");
    }

    final cachedProducts = await _db.getAllProducts();
    
    if (cachedProducts.isNotEmpty) {
      return ProductApiResponse(200, cachedProducts, "Loaded from cache");
    }

    return ProductApiResponse.empty;
  }

  Stream<List<ProductData>> watchProducts() {
    return _db.select(_db.products)
        .watch()
        .map((rows) => rows.map((row) => ProductData.fromJson(row.toJson())).toList());
  }
}