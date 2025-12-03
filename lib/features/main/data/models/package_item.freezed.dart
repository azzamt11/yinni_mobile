// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageItem {

@HiveField(0) String get name;@HiveField(1) String get id;@HiveField(2) String get image;@HiveField(3) DateTime get date;@HiveField(4) String get location;@HiveField(5) String get transportation;@HiveField(6) int? get duration;@HiveField(7) int get rating;@HiveField(8) List<BankAccount> get bankAccounts;@HiveField(9) double get originalPrice;@HiveField(10) int get originalExponent;@HiveField(11) double get discountedPrice;@HiveField(12) int get discountedExponent;@HiveField(13) String get background;@HiveField(14) dynamic get information;
/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageItemCopyWith<PackageItem> get copyWith => _$PackageItemCopyWithImpl<PackageItem>(this as PackageItem, _$identity);

  /// Serializes this PackageItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.transportation, transportation) || other.transportation == transportation)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.bankAccounts, bankAccounts)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.originalExponent, originalExponent) || other.originalExponent == originalExponent)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.discountedExponent, discountedExponent) || other.discountedExponent == discountedExponent)&&(identical(other.background, background) || other.background == background)&&const DeepCollectionEquality().equals(other.information, information));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,image,date,location,transportation,duration,rating,const DeepCollectionEquality().hash(bankAccounts),originalPrice,originalExponent,discountedPrice,discountedExponent,background,const DeepCollectionEquality().hash(information));

@override
String toString() {
  return 'PackageItem(name: $name, id: $id, image: $image, date: $date, location: $location, transportation: $transportation, duration: $duration, rating: $rating, bankAccounts: $bankAccounts, originalPrice: $originalPrice, originalExponent: $originalExponent, discountedPrice: $discountedPrice, discountedExponent: $discountedExponent, background: $background, information: $information)';
}


}

/// @nodoc
abstract mixin class $PackageItemCopyWith<$Res>  {
  factory $PackageItemCopyWith(PackageItem value, $Res Function(PackageItem) _then) = _$PackageItemCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String name,@HiveField(1) String id,@HiveField(2) String image,@HiveField(3) DateTime date,@HiveField(4) String location,@HiveField(5) String transportation,@HiveField(6) int? duration,@HiveField(7) int rating,@HiveField(8) List<BankAccount> bankAccounts,@HiveField(9) double originalPrice,@HiveField(10) int originalExponent,@HiveField(11) double discountedPrice,@HiveField(12) int discountedExponent,@HiveField(13) String background,@HiveField(14) dynamic information
});




}
/// @nodoc
class _$PackageItemCopyWithImpl<$Res>
    implements $PackageItemCopyWith<$Res> {
  _$PackageItemCopyWithImpl(this._self, this._then);

  final PackageItem _self;
  final $Res Function(PackageItem) _then;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? image = null,Object? date = null,Object? location = null,Object? transportation = null,Object? duration = freezed,Object? rating = null,Object? bankAccounts = null,Object? originalPrice = null,Object? originalExponent = null,Object? discountedPrice = null,Object? discountedExponent = null,Object? background = null,Object? information = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,transportation: null == transportation ? _self.transportation : transportation // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,bankAccounts: null == bankAccounts ? _self.bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double,originalExponent: null == originalExponent ? _self.originalExponent : originalExponent // ignore: cast_nullable_to_non_nullable
as int,discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as double,discountedExponent: null == discountedExponent ? _self.discountedExponent : discountedExponent // ignore: cast_nullable_to_non_nullable
as int,background: null == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as String,information: freezed == information ? _self.information : information // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageItem].
extension PackageItemPatterns on PackageItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageItem value)  $default,){
final _that = this;
switch (_that) {
case _PackageItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageItem value)?  $default,){
final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  String location, @HiveField(5)  String transportation, @HiveField(6)  int? duration, @HiveField(7)  int rating, @HiveField(8)  List<BankAccount> bankAccounts, @HiveField(9)  double originalPrice, @HiveField(10)  int originalExponent, @HiveField(11)  double discountedPrice, @HiveField(12)  int discountedExponent, @HiveField(13)  String background, @HiveField(14)  dynamic information)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
return $default(_that.name,_that.id,_that.image,_that.date,_that.location,_that.transportation,_that.duration,_that.rating,_that.bankAccounts,_that.originalPrice,_that.originalExponent,_that.discountedPrice,_that.discountedExponent,_that.background,_that.information);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  String location, @HiveField(5)  String transportation, @HiveField(6)  int? duration, @HiveField(7)  int rating, @HiveField(8)  List<BankAccount> bankAccounts, @HiveField(9)  double originalPrice, @HiveField(10)  int originalExponent, @HiveField(11)  double discountedPrice, @HiveField(12)  int discountedExponent, @HiveField(13)  String background, @HiveField(14)  dynamic information)  $default,) {final _that = this;
switch (_that) {
case _PackageItem():
return $default(_that.name,_that.id,_that.image,_that.date,_that.location,_that.transportation,_that.duration,_that.rating,_that.bankAccounts,_that.originalPrice,_that.originalExponent,_that.discountedPrice,_that.discountedExponent,_that.background,_that.information);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  String location, @HiveField(5)  String transportation, @HiveField(6)  int? duration, @HiveField(7)  int rating, @HiveField(8)  List<BankAccount> bankAccounts, @HiveField(9)  double originalPrice, @HiveField(10)  int originalExponent, @HiveField(11)  double discountedPrice, @HiveField(12)  int discountedExponent, @HiveField(13)  String background, @HiveField(14)  dynamic information)?  $default,) {final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
return $default(_that.name,_that.id,_that.image,_that.date,_that.location,_that.transportation,_that.duration,_that.rating,_that.bankAccounts,_that.originalPrice,_that.originalExponent,_that.discountedPrice,_that.discountedExponent,_that.background,_that.information);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageItem implements PackageItem {
  const _PackageItem({@HiveField(0) this.name = "", @HiveField(1) required this.id, @HiveField(2) this.image = "", @HiveField(3) required this.date, @HiveField(4) this.location = "", @HiveField(5) this.transportation = "", @HiveField(6) required this.duration, @HiveField(7) this.rating = 0, @HiveField(8) final  List<BankAccount> bankAccounts = const [], @HiveField(9) this.originalPrice = 0, @HiveField(10) this.originalExponent = 0, @HiveField(11) this.discountedPrice = 0, @HiveField(12) this.discountedExponent = 0, @HiveField(13) this.background = "", @HiveField(14) this.information = false}): _bankAccounts = bankAccounts;
  factory _PackageItem.fromJson(Map<String, dynamic> json) => _$PackageItemFromJson(json);

@override@JsonKey()@HiveField(0) final  String name;
@override@HiveField(1) final  String id;
@override@JsonKey()@HiveField(2) final  String image;
@override@HiveField(3) final  DateTime date;
@override@JsonKey()@HiveField(4) final  String location;
@override@JsonKey()@HiveField(5) final  String transportation;
@override@HiveField(6) final  int? duration;
@override@JsonKey()@HiveField(7) final  int rating;
 final  List<BankAccount> _bankAccounts;
@override@JsonKey()@HiveField(8) List<BankAccount> get bankAccounts {
  if (_bankAccounts is EqualUnmodifiableListView) return _bankAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bankAccounts);
}

@override@JsonKey()@HiveField(9) final  double originalPrice;
@override@JsonKey()@HiveField(10) final  int originalExponent;
@override@JsonKey()@HiveField(11) final  double discountedPrice;
@override@JsonKey()@HiveField(12) final  int discountedExponent;
@override@JsonKey()@HiveField(13) final  String background;
@override@JsonKey()@HiveField(14) final  dynamic information;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageItemCopyWith<_PackageItem> get copyWith => __$PackageItemCopyWithImpl<_PackageItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.transportation, transportation) || other.transportation == transportation)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._bankAccounts, _bankAccounts)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.originalExponent, originalExponent) || other.originalExponent == originalExponent)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.discountedExponent, discountedExponent) || other.discountedExponent == discountedExponent)&&(identical(other.background, background) || other.background == background)&&const DeepCollectionEquality().equals(other.information, information));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,image,date,location,transportation,duration,rating,const DeepCollectionEquality().hash(_bankAccounts),originalPrice,originalExponent,discountedPrice,discountedExponent,background,const DeepCollectionEquality().hash(information));

@override
String toString() {
  return 'PackageItem(name: $name, id: $id, image: $image, date: $date, location: $location, transportation: $transportation, duration: $duration, rating: $rating, bankAccounts: $bankAccounts, originalPrice: $originalPrice, originalExponent: $originalExponent, discountedPrice: $discountedPrice, discountedExponent: $discountedExponent, background: $background, information: $information)';
}


}

/// @nodoc
abstract mixin class _$PackageItemCopyWith<$Res> implements $PackageItemCopyWith<$Res> {
  factory _$PackageItemCopyWith(_PackageItem value, $Res Function(_PackageItem) _then) = __$PackageItemCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String name,@HiveField(1) String id,@HiveField(2) String image,@HiveField(3) DateTime date,@HiveField(4) String location,@HiveField(5) String transportation,@HiveField(6) int? duration,@HiveField(7) int rating,@HiveField(8) List<BankAccount> bankAccounts,@HiveField(9) double originalPrice,@HiveField(10) int originalExponent,@HiveField(11) double discountedPrice,@HiveField(12) int discountedExponent,@HiveField(13) String background,@HiveField(14) dynamic information
});




}
/// @nodoc
class __$PackageItemCopyWithImpl<$Res>
    implements _$PackageItemCopyWith<$Res> {
  __$PackageItemCopyWithImpl(this._self, this._then);

  final _PackageItem _self;
  final $Res Function(_PackageItem) _then;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? image = null,Object? date = null,Object? location = null,Object? transportation = null,Object? duration = freezed,Object? rating = null,Object? bankAccounts = null,Object? originalPrice = null,Object? originalExponent = null,Object? discountedPrice = null,Object? discountedExponent = null,Object? background = null,Object? information = freezed,}) {
  return _then(_PackageItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,transportation: null == transportation ? _self.transportation : transportation // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,bankAccounts: null == bankAccounts ? _self._bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double,originalExponent: null == originalExponent ? _self.originalExponent : originalExponent // ignore: cast_nullable_to_non_nullable
as int,discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as double,discountedExponent: null == discountedExponent ? _self.discountedExponent : discountedExponent // ignore: cast_nullable_to_non_nullable
as int,background: null == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as String,information: freezed == information ? _self.information : information // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
