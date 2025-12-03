// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CacheControl {

 String get label; DateTime get lastRequest;
/// Create a copy of CacheControl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheControlCopyWith<CacheControl> get copyWith => _$CacheControlCopyWithImpl<CacheControl>(this as CacheControl, _$identity);

  /// Serializes this CacheControl to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheControl&&(identical(other.label, label) || other.label == label)&&(identical(other.lastRequest, lastRequest) || other.lastRequest == lastRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,lastRequest);

@override
String toString() {
  return 'CacheControl(label: $label, lastRequest: $lastRequest)';
}


}

/// @nodoc
abstract mixin class $CacheControlCopyWith<$Res>  {
  factory $CacheControlCopyWith(CacheControl value, $Res Function(CacheControl) _then) = _$CacheControlCopyWithImpl;
@useResult
$Res call({
 String label, DateTime lastRequest
});




}
/// @nodoc
class _$CacheControlCopyWithImpl<$Res>
    implements $CacheControlCopyWith<$Res> {
  _$CacheControlCopyWithImpl(this._self, this._then);

  final CacheControl _self;
  final $Res Function(CacheControl) _then;

/// Create a copy of CacheControl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? lastRequest = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,lastRequest: null == lastRequest ? _self.lastRequest : lastRequest // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CacheControl].
extension CacheControlPatterns on CacheControl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CacheControl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CacheControl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CacheControl value)  $default,){
final _that = this;
switch (_that) {
case _CacheControl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CacheControl value)?  $default,){
final _that = this;
switch (_that) {
case _CacheControl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  DateTime lastRequest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CacheControl() when $default != null:
return $default(_that.label,_that.lastRequest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  DateTime lastRequest)  $default,) {final _that = this;
switch (_that) {
case _CacheControl():
return $default(_that.label,_that.lastRequest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  DateTime lastRequest)?  $default,) {final _that = this;
switch (_that) {
case _CacheControl() when $default != null:
return $default(_that.label,_that.lastRequest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CacheControl implements CacheControl {
  const _CacheControl({required this.label, required this.lastRequest});
  factory _CacheControl.fromJson(Map<String, dynamic> json) => _$CacheControlFromJson(json);

@override final  String label;
@override final  DateTime lastRequest;

/// Create a copy of CacheControl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CacheControlCopyWith<_CacheControl> get copyWith => __$CacheControlCopyWithImpl<_CacheControl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CacheControlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CacheControl&&(identical(other.label, label) || other.label == label)&&(identical(other.lastRequest, lastRequest) || other.lastRequest == lastRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,lastRequest);

@override
String toString() {
  return 'CacheControl(label: $label, lastRequest: $lastRequest)';
}


}

/// @nodoc
abstract mixin class _$CacheControlCopyWith<$Res> implements $CacheControlCopyWith<$Res> {
  factory _$CacheControlCopyWith(_CacheControl value, $Res Function(_CacheControl) _then) = __$CacheControlCopyWithImpl;
@override @useResult
$Res call({
 String label, DateTime lastRequest
});




}
/// @nodoc
class __$CacheControlCopyWithImpl<$Res>
    implements _$CacheControlCopyWith<$Res> {
  __$CacheControlCopyWithImpl(this._self, this._then);

  final _CacheControl _self;
  final $Res Function(_CacheControl) _then;

/// Create a copy of CacheControl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? lastRequest = null,}) {
  return _then(_CacheControl(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,lastRequest: null == lastRequest ? _self.lastRequest : lastRequest // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
