

import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:yinni_mobile/features/main/data/services/home_service.dart';

class HomeRepository {
  HomeRepository(
    this._homeService);

  final HomeService _homeService;
  //final HomeBox _homeBox;


  Future<productApiResponse?> fetch({bool isRefresh = false}) async {
    final response = await _homeService.fetch();
    return productApiResponse.fromChopperResponse(response);
  }
}
