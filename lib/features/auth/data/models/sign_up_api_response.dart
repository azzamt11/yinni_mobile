import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUpApiResponse {
  final int? userId;

  const SignUpApiResponse({
    required this.userId,
  });

  static const empty = SignUpApiResponse(
    userId: null,
  );

  factory SignUpApiResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpApiResponseToJson(this);

  /// Helper for Chopper
  static SignUpApiResponse fromChopperResponse(Response<SignUpApiResponse> r) {
    return r.body ?? SignUpApiResponse.empty;
  }
}
