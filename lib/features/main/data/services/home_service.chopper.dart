// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'home_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$HomeService extends HomeService {
  _$HomeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = HomeService;

  @override
  Future<Response<ProductListApiResponse>> fetch({
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
  }) {
    final Uri $url = Uri.parse('/v1/home/product/all');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'page_size': pageSize,
      'category': category,
      'brand': brand,
      'min_price': minPrice,
      'max_price': maxPrice,
      'min_rating': minRating,
      'seller': seller,
      'sort_by': sortBy,
      'sort_order': sortOrder,
      'search_query': searchQuery,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ProductListApiResponse, ProductListApiResponse>(
      $request,
    );
  }

  @override
  Future<Response<ProductData>> getById(int? id) {
    final Uri $url = Uri.parse('/v1/home/product/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductData, ProductData>($request);
  }
}
