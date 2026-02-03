// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'product_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ProductService extends ProductService {
  _$ProductService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ProductService;

  @override
  Future<Response<ProductListApiResponse>> fetch(Map<String, dynamic> params) {
    final Uri $url = Uri.parse('/home/v1/products');
    final Map<String, dynamic> $params = <String, dynamic>{'params': params};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ProductListApiResponse, ProductListApiResponse>(
      $request,
    );
  }
}
