// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductApiResponse _$ProductApiResponseFromJson(Map<String, dynamic> json) =>
    ProductApiResponse(
      (json['code'] as num).toInt(),
      (json['data'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$ProductApiResponseToJson(ProductApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
