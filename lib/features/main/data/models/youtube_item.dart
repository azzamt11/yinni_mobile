import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'youtube_item.freezed.dart';
part 'youtube_item.g.dart';

@freezed
@HiveType(typeId: 4)
abstract class YoutubeItem with _$YoutubeItem {
  const factory YoutubeItem({
    @HiveField(0) @Default("") String name,
    @HiveField(1) required String id,
    @HiveField(2) @Default("") String image,
    @HiveField(3) required DateTime date,
    @HiveField(4) @Default(0) int rating,
    @HiveField(5) @Default("") String background,
    @HiveField(6) @Default(false) dynamic information,
  }) = _YoutubeItem;

  factory YoutubeItem.fromJson(Map<String, dynamic> json) => _$YoutubeItemFromJson(json);
  static const fromJsonFactory = _$YoutubeItemFromJson;
  static const toJsonConverter = _$YoutubeItemToJson;
}