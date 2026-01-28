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
  Future<Response<productApiResponse>> fetch() {
    final Uri $url = Uri.parse('/home/v1/products');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<productApiResponse, productApiResponse>($request);
  }
}
