// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YoutubeItem {

@HiveField(0) String get name;@HiveField(1) String get id;@HiveField(2) String get image;@HiveField(3) DateTime get date;@HiveField(4) int get rating;@HiveField(5) String get background;@HiveField(6) dynamic get information;
/// Create a copy of YoutubeItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YoutubeItemCopyWith<YoutubeItem> get copyWith => _$YoutubeItemCopyWithImpl<YoutubeItem>(this as YoutubeItem, _$identity);

  /// Serializes this YoutubeItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YoutubeItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.background, background) || other.background == background)&&const DeepCollectionEquality().equals(other.information, information));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,image,date,rating,background,const DeepCollectionEquality().hash(information));

@override
String toString() {
  return 'YoutubeItem(name: $name, id: $id, image: $image, date: $date, rating: $rating, background: $background, information: $information)';
}


}

/// @nodoc
abstract mixin class $YoutubeItemCopyWith<$Res>  {
  factory $YoutubeItemCopyWith(YoutubeItem value, $Res Function(YoutubeItem) _then) = _$YoutubeItemCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String name,@HiveField(1) String id,@HiveField(2) String image,@HiveField(3) DateTime date,@HiveField(4) int rating,@HiveField(5) String background,@HiveField(6) dynamic information
});




}
/// @nodoc
class _$YoutubeItemCopyWithImpl<$Res>
    implements $YoutubeItemCopyWith<$Res> {
  _$YoutubeItemCopyWithImpl(this._self, this._then);

  final YoutubeItem _self;
  final $Res Function(YoutubeItem) _then;

/// Create a copy of YoutubeItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? image = null,Object? date = null,Object? rating = null,Object? background = null,Object? information = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,background: null == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as String,information: freezed == information ? _self.information : information // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [YoutubeItem].
extension YoutubeItemPatterns on YoutubeItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YoutubeItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YoutubeItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YoutubeItem value)  $default,){
final _that = this;
switch (_that) {
case _YoutubeItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YoutubeItem value)?  $default,){
final _that = this;
switch (_that) {
case _YoutubeItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  int rating, @HiveField(5)  String background, @HiveField(6)  dynamic information)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YoutubeItem() when $default != null:
return $default(_that.name,_that.id,_that.image,_that.date,_that.rating,_that.background,_that.information);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  int rating, @HiveField(5)  String background, @HiveField(6)  dynamic information)  $default,) {final _that = this;
switch (_that) {
case _YoutubeItem():
return $default(_that.name,_that.id,_that.image,_that.date,_that.rating,_that.background,_that.information);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String name, @HiveField(1)  String id, @HiveField(2)  String image, @HiveField(3)  DateTime date, @HiveField(4)  int rating, @HiveField(5)  String background, @HiveField(6)  dynamic information)?  $default,) {final _that = this;
switch (_that) {
case _YoutubeItem() when $default != null:
return $default(_that.name,_that.id,_that.image,_that.date,_that.rating,_that.background,_that.information);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YoutubeItem implements YoutubeItem {
  const _YoutubeItem({@HiveField(0) this.name = "", @HiveField(1) required this.id, @HiveField(2) this.image = "", @HiveField(3) required this.date, @HiveField(4) this.rating = 0, @HiveField(5) this.background = "", @HiveField(6) this.information = false});
  factory _YoutubeItem.fromJson(Map<String, dynamic> json) => _$YoutubeItemFromJson(json);

@override@JsonKey()@HiveField(0) final  String name;
@override@HiveField(1) final  String id;
@override@JsonKey()@HiveField(2) final  String image;
@override@HiveField(3) final  DateTime date;
@override@JsonKey()@HiveField(4) final  int rating;
@override@JsonKey()@HiveField(5) final  String background;
@override@JsonKey()@HiveField(6) final  dynamic information;

/// Create a copy of YoutubeItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YoutubeItemCopyWith<_YoutubeItem> get copyWith => __$YoutubeItemCopyWithImpl<_YoutubeItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YoutubeItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YoutubeItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.background, background) || other.background == background)&&const DeepCollectionEquality().equals(other.information, information));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,image,date,rating,background,const DeepCollectionEquality().hash(information));

@override
String toString() {
  return 'YoutubeItem(name: $name, id: $id, image: $image, date: $date, rating: $rating, background: $background, information: $information)';
}


}

/// @nodoc
abstract mixin class _$YoutubeItemCopyWith<$Res> implements $YoutubeItemCopyWith<$Res> {
  factory _$YoutubeItemCopyWith(_YoutubeItem value, $Res Function(_YoutubeItem) _then) = __$YoutubeItemCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String name,@HiveField(1) String id,@HiveField(2) String image,@HiveField(3) DateTime date,@HiveField(4) int rating,@HiveField(5) String background,@HiveField(6) dynamic information
});




}
/// @nodoc
class __$YoutubeItemCopyWithImpl<$Res>
    implements _$YoutubeItemCopyWith<$Res> {
  __$YoutubeItemCopyWithImpl(this._self, this._then);

  final _YoutubeItem _self;
  final $Res Function(_YoutubeItem) _then;

/// Create a copy of YoutubeItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? image = null,Object? date = null,Object? rating = null,Object? background = null,Object? information = freezed,}) {
  return _then(_YoutubeItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,background: null == background ? _self.background : background // ignore: cast_nullable_to_non_nullable
as String,information: freezed == information ? _self.information : information // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
