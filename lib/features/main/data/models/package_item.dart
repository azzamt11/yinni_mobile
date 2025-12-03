import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'bank_account.dart';

part 'package_item.freezed.dart';
part 'package_item.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class PackageItem with _$PackageItem {
  const factory PackageItem({
    @HiveField(0) @Default("") String name,
    @HiveField(1) required String id,
    @HiveField(2) @Default("") String image,
    @HiveField(3) required DateTime date,
    @HiveField(4) @Default("") String location,
    @HiveField(5) @Default("") String transportation,
    @HiveField(6) required int? duration,
    @HiveField(7) @Default(0) int rating,
    @HiveField(8) @Default([]) List<BankAccount> bankAccounts,
    @HiveField(9) @Default(0) double originalPrice,
    @HiveField(10) @Default(0) int originalExponent,
    @HiveField(11) @Default(0) double discountedPrice,
    @HiveField(12) @Default(0) int discountedExponent,
    @HiveField(13) @Default("") String background,
    @HiveField(14) @Default(false) dynamic information,
  }) = _PackageItem;

  factory PackageItem.fromJson(Map<String, dynamic> json) => _$PackageItemFromJson(json);
  static const fromJsonFactory = _$PackageItemFromJson;
  static const toJsonConverter = _$PackageItemToJson;
}