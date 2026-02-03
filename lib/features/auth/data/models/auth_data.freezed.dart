// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthData {

@HiveField(0) String get id;@HiveField(2) String get name;@HiveField(3) String get email;
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDataCopyWith<AuthData> get copyWith => _$AuthDataCopyWithImpl<AuthData>(this as AuthData, _$identity);

  /// Serializes this AuthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'AuthData(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $AuthDataCopyWith<$Res>  {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) _then) = _$AuthDataCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(2) String name,@HiveField(3) String email
});




}
/// @nodoc
class _$AuthDataCopyWithImpl<$Res>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._self, this._then);

  final AuthData _self;
  final $Res Function(AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthData].
extension AuthDataPatterns on AuthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthData value)  $default,){
final _that = this;
switch (_that) {
case _AuthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(2)  String name, @HiveField(3)  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(2)  String name, @HiveField(3)  String email)  $default,) {final _that = this;
switch (_that) {
case _AuthData():
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(2)  String name, @HiveField(3)  String email)?  $default,) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthData implements AuthData {
  const _AuthData({@HiveField(0) required this.id, @HiveField(2) this.name = "", @HiveField(3) this.email = ""});
  factory _AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);

@override@HiveField(0) final  String id;
@override@JsonKey()@HiveField(2) final  String name;
@override@JsonKey()@HiveField(3) final  String email;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDataCopyWith<_AuthData> get copyWith => __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'AuthData(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) _then) = __$AuthDataCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(2) String name,@HiveField(3) String email
});




}
/// @nodoc
class __$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(this._self, this._then);

  final _AuthData _self;
  final $Res Function(_AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(_AuthData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
