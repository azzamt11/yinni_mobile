// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageItem _$PackageItemFromJson(Map<String, dynamic> json) => _PackageItem(
  name: json['name'] as String? ?? "",
  id: json['id'] as String,
  image: json['image'] as String? ?? "",
  date: DateTime.parse(json['date'] as String),
  location: json['location'] as String? ?? "",
  transportation: json['transportation'] as String? ?? "",
  duration: (json['duration'] as num?)?.toInt(),
  rating: (json['rating'] as num?)?.toInt() ?? 0,
  bankAccounts:
      (json['bankAccounts'] as List<dynamic>?)
          ?.map((e) => BankAccount.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  originalPrice: (json['originalPrice'] as num?)?.toDouble() ?? 0,
  originalExponent: (json['originalExponent'] as num?)?.toInt() ?? 0,
  discountedPrice: (json['discountedPrice'] as num?)?.toDouble() ?? 0,
  discountedExponent: (json['discountedExponent'] as num?)?.toInt() ?? 0,
  background: json['background'] as String? ?? "",
  information: json['information'] ?? false,
);

Map<String, dynamic> _$PackageItemToJson(_PackageItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'transportation': instance.transportation,
      'duration': instance.duration,
      'rating': instance.rating,
      'bankAccounts': instance.bankAccounts,
      'originalPrice': instance.originalPrice,
      'originalExponent': instance.originalExponent,
      'discountedPrice': instance.discountedPrice,
      'discountedExponent': instance.discountedExponent,
      'background': instance.background,
      'information': instance.information,
    };
