// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductData _$ProductDataFromJson(Map<String, dynamic> json) => _ProductData(
  id: json['id'] as String,
  originalId: json['originalId'] as String? ?? "",
  title: json['title'] as String? ?? "",
  brand: json['brand'] as String? ?? "",
  description: json['description'] as String? ?? "",
  actualPrice: json['actualPrice'] as String? ?? "",
  sellingPrice: json['sellingPrice'] as String? ?? "",
  discount: json['discount'] as String? ?? "",
  priceNumeric: (json['priceNumeric'] as num?)?.toInt() ?? 0,
  discountPercentage: (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
  category: json['category'] as String? ?? "",
  subCategory: json['subCategory'] as String? ?? "",
  outOfStock: json['outOfStock'] as bool? ?? false,
  seller: json['seller'] as String? ?? "",
  averageRating: json['averageRating'] as String? ?? "",
  ratingNumeric: (json['ratingNumeric'] as num?)?.toDouble() ?? 0.0,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  primaryImage: json['primaryImage'] as String? ?? "",
  productDetails: json['productDetails'] == null
      ? null
      : ProductDetails.fromJson(json['productDetails'] as Map<String, dynamic>),
  url: json['url'] as String? ?? "",
  pid: json['pid'] as String? ?? "",
  styleCode: json['styleCode'] as String? ?? "",
  crawledAt: json['crawledAt'] == null
      ? null
      : DateTime.parse(json['crawledAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
  clickCount: (json['clickCount'] as num?)?.toInt() ?? 0,
  featured: json['featured'] as bool? ?? false,
);

Map<String, dynamic> _$ProductDataToJson(_ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalId': instance.originalId,
      'title': instance.title,
      'brand': instance.brand,
      'description': instance.description,
      'actualPrice': instance.actualPrice,
      'sellingPrice': instance.sellingPrice,
      'discount': instance.discount,
      'priceNumeric': instance.priceNumeric,
      'discountPercentage': instance.discountPercentage,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'outOfStock': instance.outOfStock,
      'seller': instance.seller,
      'averageRating': instance.averageRating,
      'ratingNumeric': instance.ratingNumeric,
      'images': instance.images,
      'primaryImage': instance.primaryImage,
      'productDetails': instance.productDetails,
      'url': instance.url,
      'pid': instance.pid,
      'styleCode': instance.styleCode,
      'crawledAt': instance.crawledAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'viewCount': instance.viewCount,
      'clickCount': instance.clickCount,
      'featured': instance.featured,
    };
