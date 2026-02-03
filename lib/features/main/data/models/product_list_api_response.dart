import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

part 'product_list_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductListApiResponse {
  final List<ProductData> products;
  final int? total;
  final int? page;
  final int? pageSize;

  const ProductListApiResponse({
    required this.products,
    required this.total,
    required this.page,
    required this.pageSize,
  });

  static const empty = ProductListApiResponse(
    products: [],
    total: null,
    page: null,
    pageSize: null,
  );

  factory ProductListApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListApiResponseToJson(this);

  /// Helper for Chopper
  static ProductListApiResponse fromChopperResponse(Response<ProductListApiResponse> r) {
    return r.body ?? ProductListApiResponse.empty;
  }
}
