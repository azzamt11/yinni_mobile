import 'dart:math';

import 'package:bin_mahfudz_mobile/core/repositories/network/models/api_response.dart';
import 'package:bin_mahfudz_mobile/core/repositories/network/utilities/chopper_extensions.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/home_data.dart';
import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeApiResponse extends ApiResponse {
  HomeApiResponse(int code, this.data, String? message) : super(code: code, message: message);

  final HomeData? data;

  static HomeApiResponse empty = HomeApiResponse(400, HomeData.empty, null);
  static HomeApiResponse fromChopperResponse(Response<HomeApiResponse> r)
    => HomeApiResponse(max(r.statusCode, r.bodyNotNull.code), r.bodyNotNull.data, r.bodyNotNull.message);

  static const fromJsonFactory = _$HomeApiResponseFromJson;
  Map<String, dynamic> toJson() => _$HomeApiResponseToJson(this);

}