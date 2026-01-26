// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'home_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$HomeService extends HomeService {
  _$HomeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = HomeService;

  @override
  Future<Response<productApiResponse>> fetch() {
    final Uri $url = Uri.parse('/home/all');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<productApiResponse, productApiResponse>($request);
  }
}
