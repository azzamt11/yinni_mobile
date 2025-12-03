// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeApiResponse _$HomeApiResponseFromJson(Map<String, dynamic> json) =>
    HomeApiResponse(
      (json['code'] as num).toInt(),
      json['data'] == null
          ? null
          : HomeData.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$HomeApiResponseToJson(HomeApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };
