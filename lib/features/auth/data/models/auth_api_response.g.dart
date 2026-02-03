// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthApiResponse _$AuthApiResponseFromJson(Map<String, dynamic> json) =>
    AuthApiResponse(
      accessToken: json['accessToken'] as String?,
      tokenType: json['tokenType'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      data: AuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthApiResponseToJson(AuthApiResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'data': instance.data.toJson(),
    };
