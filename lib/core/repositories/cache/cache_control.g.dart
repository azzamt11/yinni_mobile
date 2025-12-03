// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CacheControl _$CacheControlFromJson(Map<String, dynamic> json) =>
    _CacheControl(
      label: json['label'] as String,
      lastRequest: DateTime.parse(json['lastRequest'] as String),
    );

Map<String, dynamic> _$CacheControlToJson(_CacheControl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'lastRequest': instance.lastRequest.toIso8601String(),
    };
