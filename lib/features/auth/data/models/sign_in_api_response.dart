import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yinni_mobile/features/auth/data/models/user_data.dart';

part 'sign_in_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SignInApiResponse {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final UserData data;

  const SignInApiResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.data,
  });

  static const empty = SignInApiResponse(
    accessToken: null,
    tokenType: null,
    expiresIn: null,
    data: UserData.empty,
  );

  factory SignInApiResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInApiResponseToJson(this);

  /// Helper for Chopper
  static SignInApiResponse fromChopperResponse(Response<SignInApiResponse> r) {
    return r.body ?? SignInApiResponse.empty;
  }
}
