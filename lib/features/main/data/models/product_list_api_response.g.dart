// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListApiResponse _$ProductListApiResponseFromJson(
  Map<String, dynamic> json,
) => ProductListApiResponse(
  products: (json['products'] as List<dynamic>)
      .map((e) => ProductData.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductListApiResponseToJson(
  ProductListApiResponse instance,
) => <String, dynamic>{
  'products': instance.products.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
