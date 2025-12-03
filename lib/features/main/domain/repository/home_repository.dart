

import 'package:bin_mahfudz_mobile/features/main/data/models/home_api_response.dart';
import 'package:bin_mahfudz_mobile/features/main/data/services/home_service.dart';

class HomeRepository {
  HomeRepository(
    this._homeService);

  final HomeService _homeService;
  //final HomeBox _homeBox;


  Future<HomeApiResponse?> fetch({bool isRefresh = false}) async {
    final response = await _homeService.fetch();
    return HomeApiResponse.fromChopperResponse(response);
  }
}
