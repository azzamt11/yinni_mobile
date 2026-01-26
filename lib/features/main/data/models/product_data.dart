import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'product_details.dart'; // Import the file above

part 'product_data.freezed.dart';
part 'product_data.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class ProductData with _$ProductData {
  const factory ProductData({
    @HiveField(0) required String id,
    @HiveField(1) @Default("") String originalId,
    @HiveField(2) @Default("") String title,
    @HiveField(3) @Default("") String brand,
    @HiveField(4) @Default("") String description,
    @HiveField(5) @Default("") String actualPrice,
    @HiveField(6) @Default("") String sellingPrice,
    @HiveField(7) @Default("") String discount,
    @HiveField(8) @Default(0) int priceNumeric,
    @HiveField(9) @Default(0.0) double discountPercentage,
    @HiveField(10) @Default("") String category,
    @HiveField(11) @Default("") String subCategory,
    @HiveField(12) @Default(false) bool outOfStock,
    @HiveField(13) @Default("") String seller,
    @HiveField(14) @Default("") String averageRating,
    @HiveField(15) @Default(0.0) double ratingNumeric,
    @HiveField(16) @Default([]) List<String> images,
    @HiveField(17) @Default("") String primaryImage,
    @HiveField(18) ProductDetails? productDetails,
    @HiveField(19) @Default("") String url,
    @HiveField(20) @Default("") String pid,
    @HiveField(21) @Default("") String styleCode,
    @HiveField(22) DateTime? crawledAt,
    @HiveField(23) DateTime? createdAt,
    @HiveField(24) DateTime? updatedAt,
    @HiveField(25) @Default(0) int viewCount,
    @HiveField(26) @Default(0) int clickCount,
    @HiveField(27) @Default(false) bool featured,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
  static const empty = ProductData(id: "0");
}