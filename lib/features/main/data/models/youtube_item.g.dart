// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YoutubeItem _$YoutubeItemFromJson(Map<String, dynamic> json) => _YoutubeItem(
  name: json['name'] as String? ?? "",
  id: json['id'] as String,
  image: json['image'] as String? ?? "",
  date: DateTime.parse(json['date'] as String),
  rating: (json['rating'] as num?)?.toInt() ?? 0,
  background: json['background'] as String? ?? "",
  information: json['information'] ?? false,
);

Map<String, dynamic> _$YoutubeItemToJson(_YoutubeItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
      'date': instance.date.toIso8601String(),
      'rating': instance.rating,
      'background': instance.background,
      'information': instance.information,
    };
