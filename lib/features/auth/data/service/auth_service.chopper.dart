// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AuthService;

  @override
  Future<Response<AuthApiResponse>> signIn(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/auth/v1/sign-in');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthApiResponse, AuthApiResponse>($request);
  }

  @override
  Future<Response<AuthApiResponse>> signUp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/auth/v1/sign-up');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthApiResponse, AuthApiResponse>($request);
  }
}
