// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInApiResponse _$SignInApiResponseFromJson(Map<String, dynamic> json) =>
    SignInApiResponse(
      accessToken: json['accessToken'] as String?,
      tokenType: json['tokenType'] as String?,
      expiresIn: json['expiresIn'] as String?,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInApiResponseToJson(SignInApiResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'user': instance.user.toJson(),
    };
