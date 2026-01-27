import 'package:flutter/foundation.dart';
import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/home_service.dart';
import 'package:yinni_mobile/core/repositories/cache/database/app_database.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

class HomeRepository {
  HomeRepository(this._homeService, this._db);

  final HomeService _homeService;
  final AppDatabase _db;

  Future<productApiResponse> fetch({bool isRefresh = false}) async {
    try {
      final response = await _homeService.fetch();
      final apiResponse = productApiResponse.fromChopperResponse(response);

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
      return productApiResponse(200, cachedProducts, "Loaded from cache");
    }

    return productApiResponse.empty;
  }

  Stream<List<ProductData>> watchProducts() {
    return _db.select(_db.products)
        .watch()
        .map((rows) => rows.map((row) => ProductData.fromJson(row.toJson())).toList());
  }
}