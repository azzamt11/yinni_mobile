import 'package:bin_mahfudz_mobile/features/main/data/models/bank_account.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/home_api_response.dart';
import 'package:bin_mahfudz_mobile/features/main/presentation/view_models/package.dart';
import 'package:bin_mahfudz_mobile/features/main/presentation/view_models/youtube.dart';

class Home {
  final Package? promo;
  final Youtube? youtube;
  final List<BankAccount> bankAccounts;
  final bool? loading;
  final String? error;

  Home({
    required this.promo,
    required this.youtube,
    required this.bankAccounts,
    required this.loading,
    required this.error
  });

  factory Home.fromHomeApiResponse(HomeApiResponse? data) {
    return Home(
      promo: Package.fromPackageData(data?.data?.packageData),
      youtube: Youtube.fromYoutubeData(data?.data?.youtubeData),
      bankAccounts: data?.data?.bankAccounts ?? [],
      loading: false,
      error: data?.code != 200 ? data?.message : null
    );
  }
}