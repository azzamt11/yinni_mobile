import 'package:yinni_mobile/features/main/data/models/product_api_response.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

class Home {
  final List<ProductData>? products;
  final bool? loading;
  final String? error;

  Home({
    required this.products,
    required this.loading,
    required this.error
  });

  factory Home.fromHomeApiResponse(productApiResponse? data) {
    return Home(
      products: data?.data,
      loading: false,
      error: data?.code != 200 ? data?.message : null
    );
  }
}