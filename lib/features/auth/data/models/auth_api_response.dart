import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yinni_mobile/features/auth/data/models/auth_data.dart';

part 'auth_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthApiResponse {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final AuthData data;

  const AuthApiResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.data,
  });

  static const empty = AuthApiResponse(
    accessToken: null,
    tokenType: null,
    expiresIn: null,
    data: AuthData.empty,
  );

  factory AuthApiResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthApiResponseToJson(this);

  /// Helper for Chopper
  static AuthApiResponse fromChopperResponse(Response<AuthApiResponse> r) {
    return r.body ?? AuthApiResponse.empty;
  }
}
