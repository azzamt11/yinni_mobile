// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YoutubeData _$YoutubeDataFromJson(Map<String, dynamic> json) => _YoutubeData(
  date: DateTime.parse(json['date'] as String),
  items: (json['items'] as List<dynamic>)
      .map((e) => YoutubeItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$YoutubeDataToJson(_YoutubeData instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'items': instance.items,
    };
