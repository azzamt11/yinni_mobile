// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeData _$HomeDataFromJson(Map<String, dynamic> json) => _HomeData(
  packageData: PackageData.fromJson(
    json['packageData'] as Map<String, dynamic>,
  ),
  youtubeData: YoutubeData.fromJson(
    json['youtubeData'] as Map<String, dynamic>,
  ),
  bankAccounts: (json['bankAccounts'] as List<dynamic>)
      .map((e) => BankAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeDataToJson(_HomeData instance) => <String, dynamic>{
  'packageData': instance.packageData,
  'youtubeData': instance.youtubeData,
  'bankAccounts': instance.bankAccounts,
};
