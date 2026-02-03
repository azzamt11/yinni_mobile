import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class AuthData with _$AuthData {
  const factory AuthData({
    @HiveField(0) required String id,
    @HiveField(2) @Default("") String name,
    @HiveField(3) @Default("") String email,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);
  static const empty = AuthData(id: "0");
}