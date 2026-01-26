// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductData {

@HiveField(0) String get id;@HiveField(1) String get originalId;@HiveField(2) String get title;@HiveField(3) String get brand;@HiveField(4) String get description;@HiveField(5) String get actualPrice;@HiveField(6) String get sellingPrice;@HiveField(7) String get discount;@HiveField(8) int get priceNumeric;@HiveField(9) double get discountPercentage;@HiveField(10) String get category;@HiveField(11) String get subCategory;@HiveField(12) bool get outOfStock;@HiveField(13) String get seller;@HiveField(14) String get averageRating;@HiveField(15) double get ratingNumeric;@HiveField(16) List<String> get images;@HiveField(17) String get primaryImage;@HiveField(18) ProductDetails? get productDetails;@HiveField(19) String get url;@HiveField(20) String get pid;@HiveField(21) String get styleCode;@HiveField(22) DateTime? get crawledAt;@HiveField(23) DateTime? get createdAt;@HiveField(24) DateTime? get updatedAt;@HiveField(25) int get viewCount;@HiveField(26) int get clickCount;@HiveField(27) bool get featured;
/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDataCopyWith<ProductData> get copyWith => _$ProductDataCopyWithImpl<ProductData>(this as ProductData, _$identity);

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.originalId, originalId) || other.originalId == originalId)&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.description, description) || other.description == description)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.priceNumeric, priceNumeric) || other.priceNumeric == priceNumeric)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.outOfStock, outOfStock) || other.outOfStock == outOfStock)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.ratingNumeric, ratingNumeric) || other.ratingNumeric == ratingNumeric)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage)&&(identical(other.productDetails, productDetails) || other.productDetails == productDetails)&&(identical(other.url, url) || other.url == url)&&(identical(other.pid, pid) || other.pid == pid)&&(identical(other.styleCode, styleCode) || other.styleCode == styleCode)&&(identical(other.crawledAt, crawledAt) || other.crawledAt == crawledAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clickCount, clickCount) || other.clickCount == clickCount)&&(identical(other.featured, featured) || other.featured == featured));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,originalId,title,brand,description,actualPrice,sellingPrice,discount,priceNumeric,discountPercentage,category,subCategory,outOfStock,seller,averageRating,ratingNumeric,const DeepCollectionEquality().hash(images),primaryImage,productDetails,url,pid,styleCode,crawledAt,createdAt,updatedAt,viewCount,clickCount,featured]);

@override
String toString() {
  return 'ProductData(id: $id, originalId: $originalId, title: $title, brand: $brand, description: $description, actualPrice: $actualPrice, sellingPrice: $sellingPrice, discount: $discount, priceNumeric: $priceNumeric, discountPercentage: $discountPercentage, category: $category, subCategory: $subCategory, outOfStock: $outOfStock, seller: $seller, averageRating: $averageRating, ratingNumeric: $ratingNumeric, images: $images, primaryImage: $primaryImage, productDetails: $productDetails, url: $url, pid: $pid, styleCode: $styleCode, crawledAt: $crawledAt, createdAt: $createdAt, updatedAt: $updatedAt, viewCount: $viewCount, clickCount: $clickCount, featured: $featured)';
}


}

/// @nodoc
abstract mixin class $ProductDataCopyWith<$Res>  {
  factory $ProductDataCopyWith(ProductData value, $Res Function(ProductData) _then) = _$ProductDataCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String originalId,@HiveField(2) String title,@HiveField(3) String brand,@HiveField(4) String description,@HiveField(5) String actualPrice,@HiveField(6) String sellingPrice,@HiveField(7) String discount,@HiveField(8) int priceNumeric,@HiveField(9) double discountPercentage,@HiveField(10) String category,@HiveField(11) String subCategory,@HiveField(12) bool outOfStock,@HiveField(13) String seller,@HiveField(14) String averageRating,@HiveField(15) double ratingNumeric,@HiveField(16) List<String> images,@HiveField(17) String primaryImage,@HiveField(18) ProductDetails? productDetails,@HiveField(19) String url,@HiveField(20) String pid,@HiveField(21) String styleCode,@HiveField(22) DateTime? crawledAt,@HiveField(23) DateTime? createdAt,@HiveField(24) DateTime? updatedAt,@HiveField(25) int viewCount,@HiveField(26) int clickCount,@HiveField(27) bool featured
});


$ProductDetailsCopyWith<$Res>? get productDetails;

}
/// @nodoc
class _$ProductDataCopyWithImpl<$Res>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._self, this._then);

  final ProductData _self;
  final $Res Function(ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originalId = null,Object? title = null,Object? brand = null,Object? description = null,Object? actualPrice = null,Object? sellingPrice = null,Object? discount = null,Object? priceNumeric = null,Object? discountPercentage = null,Object? category = null,Object? subCategory = null,Object? outOfStock = null,Object? seller = null,Object? averageRating = null,Object? ratingNumeric = null,Object? images = null,Object? primaryImage = null,Object? productDetails = freezed,Object? url = null,Object? pid = null,Object? styleCode = null,Object? crawledAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? viewCount = null,Object? clickCount = null,Object? featured = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalId: null == originalId ? _self.originalId : originalId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actualPrice: null == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as String,sellingPrice: null == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,priceNumeric: null == priceNumeric ? _self.priceNumeric : priceNumeric // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subCategory: null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as String,outOfStock: null == outOfStock ? _self.outOfStock : outOfStock // ignore: cast_nullable_to_non_nullable
as bool,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,ratingNumeric: null == ratingNumeric ? _self.ratingNumeric : ratingNumeric // ignore: cast_nullable_to_non_nullable
as double,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,primaryImage: null == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String,productDetails: freezed == productDetails ? _self.productDetails : productDetails // ignore: cast_nullable_to_non_nullable
as ProductDetails?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,pid: null == pid ? _self.pid : pid // ignore: cast_nullable_to_non_nullable
as String,styleCode: null == styleCode ? _self.styleCode : styleCode // ignore: cast_nullable_to_non_nullable
as String,crawledAt: freezed == crawledAt ? _self.crawledAt : crawledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,clickCount: null == clickCount ? _self.clickCount : clickCount // ignore: cast_nullable_to_non_nullable
as int,featured: null == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res>? get productDetails {
    if (_self.productDetails == null) {
    return null;
  }

  return $ProductDetailsCopyWith<$Res>(_self.productDetails!, (value) {
    return _then(_self.copyWith(productDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductData].
extension ProductDataPatterns on ProductData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductData value)  $default,){
final _that = this;
switch (_that) {
case _ProductData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String originalId, @HiveField(2)  String title, @HiveField(3)  String brand, @HiveField(4)  String description, @HiveField(5)  String actualPrice, @HiveField(6)  String sellingPrice, @HiveField(7)  String discount, @HiveField(8)  int priceNumeric, @HiveField(9)  double discountPercentage, @HiveField(10)  String category, @HiveField(11)  String subCategory, @HiveField(12)  bool outOfStock, @HiveField(13)  String seller, @HiveField(14)  String averageRating, @HiveField(15)  double ratingNumeric, @HiveField(16)  List<String> images, @HiveField(17)  String primaryImage, @HiveField(18)  ProductDetails? productDetails, @HiveField(19)  String url, @HiveField(20)  String pid, @HiveField(21)  String styleCode, @HiveField(22)  DateTime? crawledAt, @HiveField(23)  DateTime? createdAt, @HiveField(24)  DateTime? updatedAt, @HiveField(25)  int viewCount, @HiveField(26)  int clickCount, @HiveField(27)  bool featured)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.id,_that.originalId,_that.title,_that.brand,_that.description,_that.actualPrice,_that.sellingPrice,_that.discount,_that.priceNumeric,_that.discountPercentage,_that.category,_that.subCategory,_that.outOfStock,_that.seller,_that.averageRating,_that.ratingNumeric,_that.images,_that.primaryImage,_that.productDetails,_that.url,_that.pid,_that.styleCode,_that.crawledAt,_that.createdAt,_that.updatedAt,_that.viewCount,_that.clickCount,_that.featured);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String originalId, @HiveField(2)  String title, @HiveField(3)  String brand, @HiveField(4)  String description, @HiveField(5)  String actualPrice, @HiveField(6)  String sellingPrice, @HiveField(7)  String discount, @HiveField(8)  int priceNumeric, @HiveField(9)  double discountPercentage, @HiveField(10)  String category, @HiveField(11)  String subCategory, @HiveField(12)  bool outOfStock, @HiveField(13)  String seller, @HiveField(14)  String averageRating, @HiveField(15)  double ratingNumeric, @HiveField(16)  List<String> images, @HiveField(17)  String primaryImage, @HiveField(18)  ProductDetails? productDetails, @HiveField(19)  String url, @HiveField(20)  String pid, @HiveField(21)  String styleCode, @HiveField(22)  DateTime? crawledAt, @HiveField(23)  DateTime? createdAt, @HiveField(24)  DateTime? updatedAt, @HiveField(25)  int viewCount, @HiveField(26)  int clickCount, @HiveField(27)  bool featured)  $default,) {final _that = this;
switch (_that) {
case _ProductData():
return $default(_that.id,_that.originalId,_that.title,_that.brand,_that.description,_that.actualPrice,_that.sellingPrice,_that.discount,_that.priceNumeric,_that.discountPercentage,_that.category,_that.subCategory,_that.outOfStock,_that.seller,_that.averageRating,_that.ratingNumeric,_that.images,_that.primaryImage,_that.productDetails,_that.url,_that.pid,_that.styleCode,_that.crawledAt,_that.createdAt,_that.updatedAt,_that.viewCount,_that.clickCount,_that.featured);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String originalId, @HiveField(2)  String title, @HiveField(3)  String brand, @HiveField(4)  String description, @HiveField(5)  String actualPrice, @HiveField(6)  String sellingPrice, @HiveField(7)  String discount, @HiveField(8)  int priceNumeric, @HiveField(9)  double discountPercentage, @HiveField(10)  String category, @HiveField(11)  String subCategory, @HiveField(12)  bool outOfStock, @HiveField(13)  String seller, @HiveField(14)  String averageRating, @HiveField(15)  double ratingNumeric, @HiveField(16)  List<String> images, @HiveField(17)  String primaryImage, @HiveField(18)  ProductDetails? productDetails, @HiveField(19)  String url, @HiveField(20)  String pid, @HiveField(21)  String styleCode, @HiveField(22)  DateTime? crawledAt, @HiveField(23)  DateTime? createdAt, @HiveField(24)  DateTime? updatedAt, @HiveField(25)  int viewCount, @HiveField(26)  int clickCount, @HiveField(27)  bool featured)?  $default,) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.id,_that.originalId,_that.title,_that.brand,_that.description,_that.actualPrice,_that.sellingPrice,_that.discount,_that.priceNumeric,_that.discountPercentage,_that.category,_that.subCategory,_that.outOfStock,_that.seller,_that.averageRating,_that.ratingNumeric,_that.images,_that.primaryImage,_that.productDetails,_that.url,_that.pid,_that.styleCode,_that.crawledAt,_that.createdAt,_that.updatedAt,_that.viewCount,_that.clickCount,_that.featured);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductData implements ProductData {
  const _ProductData({@HiveField(0) required this.id, @HiveField(1) this.originalId = "", @HiveField(2) this.title = "", @HiveField(3) this.brand = "", @HiveField(4) this.description = "", @HiveField(5) this.actualPrice = "", @HiveField(6) this.sellingPrice = "", @HiveField(7) this.discount = "", @HiveField(8) this.priceNumeric = 0, @HiveField(9) this.discountPercentage = 0.0, @HiveField(10) this.category = "", @HiveField(11) this.subCategory = "", @HiveField(12) this.outOfStock = false, @HiveField(13) this.seller = "", @HiveField(14) this.averageRating = "", @HiveField(15) this.ratingNumeric = 0.0, @HiveField(16) final  List<String> images = const [], @HiveField(17) this.primaryImage = "", @HiveField(18) this.productDetails, @HiveField(19) this.url = "", @HiveField(20) this.pid = "", @HiveField(21) this.styleCode = "", @HiveField(22) this.crawledAt, @HiveField(23) this.createdAt, @HiveField(24) this.updatedAt, @HiveField(25) this.viewCount = 0, @HiveField(26) this.clickCount = 0, @HiveField(27) this.featured = false}): _images = images;
  factory _ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

@override@HiveField(0) final  String id;
@override@JsonKey()@HiveField(1) final  String originalId;
@override@JsonKey()@HiveField(2) final  String title;
@override@JsonKey()@HiveField(3) final  String brand;
@override@JsonKey()@HiveField(4) final  String description;
@override@JsonKey()@HiveField(5) final  String actualPrice;
@override@JsonKey()@HiveField(6) final  String sellingPrice;
@override@JsonKey()@HiveField(7) final  String discount;
@override@JsonKey()@HiveField(8) final  int priceNumeric;
@override@JsonKey()@HiveField(9) final  double discountPercentage;
@override@JsonKey()@HiveField(10) final  String category;
@override@JsonKey()@HiveField(11) final  String subCategory;
@override@JsonKey()@HiveField(12) final  bool outOfStock;
@override@JsonKey()@HiveField(13) final  String seller;
@override@JsonKey()@HiveField(14) final  String averageRating;
@override@JsonKey()@HiveField(15) final  double ratingNumeric;
 final  List<String> _images;
@override@JsonKey()@HiveField(16) List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey()@HiveField(17) final  String primaryImage;
@override@HiveField(18) final  ProductDetails? productDetails;
@override@JsonKey()@HiveField(19) final  String url;
@override@JsonKey()@HiveField(20) final  String pid;
@override@JsonKey()@HiveField(21) final  String styleCode;
@override@HiveField(22) final  DateTime? crawledAt;
@override@HiveField(23) final  DateTime? createdAt;
@override@HiveField(24) final  DateTime? updatedAt;
@override@JsonKey()@HiveField(25) final  int viewCount;
@override@JsonKey()@HiveField(26) final  int clickCount;
@override@JsonKey()@HiveField(27) final  bool featured;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDataCopyWith<_ProductData> get copyWith => __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.originalId, originalId) || other.originalId == originalId)&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.description, description) || other.description == description)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.priceNumeric, priceNumeric) || other.priceNumeric == priceNumeric)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.outOfStock, outOfStock) || other.outOfStock == outOfStock)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.ratingNumeric, ratingNumeric) || other.ratingNumeric == ratingNumeric)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage)&&(identical(other.productDetails, productDetails) || other.productDetails == productDetails)&&(identical(other.url, url) || other.url == url)&&(identical(other.pid, pid) || other.pid == pid)&&(identical(other.styleCode, styleCode) || other.styleCode == styleCode)&&(identical(other.crawledAt, crawledAt) || other.crawledAt == crawledAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clickCount, clickCount) || other.clickCount == clickCount)&&(identical(other.featured, featured) || other.featured == featured));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,originalId,title,brand,description,actualPrice,sellingPrice,discount,priceNumeric,discountPercentage,category,subCategory,outOfStock,seller,averageRating,ratingNumeric,const DeepCollectionEquality().hash(_images),primaryImage,productDetails,url,pid,styleCode,crawledAt,createdAt,updatedAt,viewCount,clickCount,featured]);

@override
String toString() {
  return 'ProductData(id: $id, originalId: $originalId, title: $title, brand: $brand, description: $description, actualPrice: $actualPrice, sellingPrice: $sellingPrice, discount: $discount, priceNumeric: $priceNumeric, discountPercentage: $discountPercentage, category: $category, subCategory: $subCategory, outOfStock: $outOfStock, seller: $seller, averageRating: $averageRating, ratingNumeric: $ratingNumeric, images: $images, primaryImage: $primaryImage, productDetails: $productDetails, url: $url, pid: $pid, styleCode: $styleCode, crawledAt: $crawledAt, createdAt: $createdAt, updatedAt: $updatedAt, viewCount: $viewCount, clickCount: $clickCount, featured: $featured)';
}


}

/// @nodoc
abstract mixin class _$ProductDataCopyWith<$Res> implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(_ProductData value, $Res Function(_ProductData) _then) = __$ProductDataCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String originalId,@HiveField(2) String title,@HiveField(3) String brand,@HiveField(4) String description,@HiveField(5) String actualPrice,@HiveField(6) String sellingPrice,@HiveField(7) String discount,@HiveField(8) int priceNumeric,@HiveField(9) double discountPercentage,@HiveField(10) String category,@HiveField(11) String subCategory,@HiveField(12) bool outOfStock,@HiveField(13) String seller,@HiveField(14) String averageRating,@HiveField(15) double ratingNumeric,@HiveField(16) List<String> images,@HiveField(17) String primaryImage,@HiveField(18) ProductDetails? productDetails,@HiveField(19) String url,@HiveField(20) String pid,@HiveField(21) String styleCode,@HiveField(22) DateTime? crawledAt,@HiveField(23) DateTime? createdAt,@HiveField(24) DateTime? updatedAt,@HiveField(25) int viewCount,@HiveField(26) int clickCount,@HiveField(27) bool featured
});


@override $ProductDetailsCopyWith<$Res>? get productDetails;

}
/// @nodoc
class __$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(this._self, this._then);

  final _ProductData _self;
  final $Res Function(_ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originalId = null,Object? title = null,Object? brand = null,Object? description = null,Object? actualPrice = null,Object? sellingPrice = null,Object? discount = null,Object? priceNumeric = null,Object? discountPercentage = null,Object? category = null,Object? subCategory = null,Object? outOfStock = null,Object? seller = null,Object? averageRating = null,Object? ratingNumeric = null,Object? images = null,Object? primaryImage = null,Object? productDetails = freezed,Object? url = null,Object? pid = null,Object? styleCode = null,Object? crawledAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? viewCount = null,Object? clickCount = null,Object? featured = null,}) {
  return _then(_ProductData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalId: null == originalId ? _self.originalId : originalId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actualPrice: null == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as String,sellingPrice: null == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,priceNumeric: null == priceNumeric ? _self.priceNumeric : priceNumeric // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subCategory: null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as String,outOfStock: null == outOfStock ? _self.outOfStock : outOfStock // ignore: cast_nullable_to_non_nullable
as bool,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,ratingNumeric: null == ratingNumeric ? _self.ratingNumeric : ratingNumeric // ignore: cast_nullable_to_non_nullable
as double,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,primaryImage: null == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String,productDetails: freezed == productDetails ? _self.productDetails : productDetails // ignore: cast_nullable_to_non_nullable
as ProductDetails?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,pid: null == pid ? _self.pid : pid // ignore: cast_nullable_to_non_nullable
as String,styleCode: null == styleCode ? _self.styleCode : styleCode // ignore: cast_nullable_to_non_nullable
as String,crawledAt: freezed == crawledAt ? _self.crawledAt : crawledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,clickCount: null == clickCount ? _self.clickCount : clickCount // ignore: cast_nullable_to_non_nullable
as int,featured: null == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<$Res>? get productDetails {
    if (_self.productDetails == null) {
    return null;
  }

  return $ProductDetailsCopyWith<$Res>(_self.productDetails!, (value) {
    return _then(_self.copyWith(productDetails: value));
  });
}
}

// dart format on
