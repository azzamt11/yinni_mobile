// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

productApiResponse _$productApiResponseFromJson(Map<String, dynamic> json) =>
    productApiResponse(
      (json['code'] as num).toInt(),
      (json['data'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$productApiResponseToJson(productApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
