import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package_item.dart';

part 'package_data.freezed.dart';
part 'package_data.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class PackageData with _$PackageData {
  const factory PackageData({
    @HiveField(0) required DateTime date,
    @HiveField(1) required List<PackageItem> items,
  }) = _PackageData;

  static PackageData empty = PackageData(date: DateTime.now(), items: []);

  factory PackageData.fromJson(Map<String, dynamic> json) => _$PackageDataFromJson(json);
  static const fromJsonFactory = _$PackageDataFromJson;
  static const toJsonConverter = _$PackageDataToJson;

}