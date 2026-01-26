import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'product_details.freezed.dart';
part 'product_details.g.dart';

@freezed
@HiveType(typeId: 4) // Ensure this typeId is unique
abstract class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    @HiveField(0) @JsonKey(name: 'Brand Color') @Default("") String brandColor,
    @HiveField(1) @JsonKey(name: 'Brand Fit') @Default("") String brandFit,
    @HiveField(2) @JsonKey(name: 'Country of Origin') @Default("") String countryOfOrigin,
    @HiveField(3) @Default("") String fabric,
    @HiveField(4) @JsonKey(name: 'Fabric Care') @Default("") String fabricCare,
    @HiveField(5) @Default("") String fit,
    @HiveField(6) @JsonKey(name: 'Generic Name') @Default("") String genericName,
    @HiveField(7) @JsonKey(name: 'Ideal For') @Default("") String idealFor,
    @HiveField(8) @JsonKey(name: 'Model Name') @Default("") String modelName,
    @HiveField(9) @JsonKey(name: 'Neck Type') @Default("") String neckType,
    @HiveField(10) @JsonKey(name: 'Pack of') @Default("") String packOf,
    @HiveField(11) @Default("") String pattern,
    @HiveField(12) @Default("") String reversible,
    @HiveField(13) @Default("") String size,
    @HiveField(14) @Default("") String sleeve,
    @HiveField(15) @JsonKey(name: 'Style Code') @Default("") String styleCode,
    @HiveField(16) @JsonKey(name: 'Suitable For') @Default("") String suitableFor,
    @HiveField(17) @Default("") String type,
  }) = _ProductDetails;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => _$ProductDetailsFromJson(json);
  static const empty = ProductDetails();
}