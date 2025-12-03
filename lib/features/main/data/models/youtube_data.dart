import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'youtube_item.dart';

part 'youtube_data.freezed.dart';
part 'youtube_data.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class YoutubeData with _$YoutubeData {
  const factory YoutubeData({
    @HiveField(0) required DateTime date,
    @HiveField(1) required List<YoutubeItem> items,
  }) = _YoutubeData;

  static YoutubeData empty = YoutubeData(date: DateTime.now(), items: []);

  factory YoutubeData.fromJson(Map<String, dynamic> json) => _$YoutubeDataFromJson(json);
  static const fromJsonFactory = _$YoutubeDataFromJson;
  static const toJsonConverter = _$YoutubeDataToJson;
}