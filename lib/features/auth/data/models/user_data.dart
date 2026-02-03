import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class UserData with _$UserData {
  const factory UserData({
    @HiveField(0) required String id,
    @HiveField(2) @Default("") String name,
    @HiveField(3) @Default("") String email,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
  static const empty = UserData(id: "0");
}