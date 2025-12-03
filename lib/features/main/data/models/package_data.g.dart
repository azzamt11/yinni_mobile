// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageData _$PackageDataFromJson(Map<String, dynamic> json) => _PackageData(
  date: DateTime.parse(json['date'] as String),
  items: (json['items'] as List<dynamic>)
      .map((e) => PackageItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PackageDataToJson(_PackageData instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'items': instance.items,
    };
