import 'package:bin_mahfudz_mobile/features/main/data/models/bank_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/package_data.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/youtube_data.dart';

part 'home_data.freezed.dart';
part 'home_data.g.dart';

@freezed
abstract class HomeData with _$HomeData {
  const factory HomeData({
    required PackageData packageData,
    required YoutubeData youtubeData,
    required List<BankAccount> bankAccounts
  }) = _HomeData;

  static HomeData empty = HomeData(packageData: PackageData.empty, youtubeData: YoutubeData.empty, bankAccounts: []);

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);
  static const fromJsonFactory = _$HomeDataFromJson;
  static const toJsonConverter = _$HomeDataToJson;
}