import 'dart:math';

import 'package:yinni_mobile/core/common/models/api_response.dart';
import 'package:yinni_mobile/core/repositories/network/utilities/chopper_extensions.dart';
import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

part 'product_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductApiResponse extends ApiResponse {
  ProductApiResponse(int code, this.data, String? message) : super(code: code, message: message);

  final List<ProductData>? data;

  static ProductApiResponse empty = ProductApiResponse(400, [], null);
  static ProductApiResponse fromChopperResponse(Response<ProductApiResponse> r)
    => ProductApiResponse(max(r.statusCode, r.bodyNotNull.code), r.bodyNotNull.data, r.bodyNotNull.message);

  static const fromJsonFactory = _$ProductApiResponseFromJson;
  Map<String, dynamic> toJson() => _$ProductApiResponseToJson(this);
}