// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeData {

 PackageData get packageData; YoutubeData get youtubeData; List<BankAccount> get bankAccounts;
/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDataCopyWith<HomeData> get copyWith => _$HomeDataCopyWithImpl<HomeData>(this as HomeData, _$identity);

  /// Serializes this HomeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeData&&(identical(other.packageData, packageData) || other.packageData == packageData)&&(identical(other.youtubeData, youtubeData) || other.youtubeData == youtubeData)&&const DeepCollectionEquality().equals(other.bankAccounts, bankAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageData,youtubeData,const DeepCollectionEquality().hash(bankAccounts));

@override
String toString() {
  return 'HomeData(packageData: $packageData, youtubeData: $youtubeData, bankAccounts: $bankAccounts)';
}


}

/// @nodoc
abstract mixin class $HomeDataCopyWith<$Res>  {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) _then) = _$HomeDataCopyWithImpl;
@useResult
$Res call({
 PackageData packageData, YoutubeData youtubeData, List<BankAccount> bankAccounts
});


$PackageDataCopyWith<$Res> get packageData;$YoutubeDataCopyWith<$Res> get youtubeData;

}
/// @nodoc
class _$HomeDataCopyWithImpl<$Res>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._self, this._then);

  final HomeData _self;
  final $Res Function(HomeData) _then;

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageData = null,Object? youtubeData = null,Object? bankAccounts = null,}) {
  return _then(_self.copyWith(
packageData: null == packageData ? _self.packageData : packageData // ignore: cast_nullable_to_non_nullable
as PackageData,youtubeData: null == youtubeData ? _self.youtubeData : youtubeData // ignore: cast_nullable_to_non_nullable
as YoutubeData,bankAccounts: null == bankAccounts ? _self.bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,
  ));
}
/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDataCopyWith<$Res> get packageData {
  
  return $PackageDataCopyWith<$Res>(_self.packageData, (value) {
    return _then(_self.copyWith(packageData: value));
  });
}/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeDataCopyWith<$Res> get youtubeData {
  
  return $YoutubeDataCopyWith<$Res>(_self.youtubeData, (value) {
    return _then(_self.copyWith(youtubeData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeData].
extension HomeDataPatterns on HomeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeData value)  $default,){
final _that = this;
switch (_that) {
case _HomeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeData value)?  $default,){
final _that = this;
switch (_that) {
case _HomeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PackageData packageData,  YoutubeData youtubeData,  List<BankAccount> bankAccounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeData() when $default != null:
return $default(_that.packageData,_that.youtubeData,_that.bankAccounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PackageData packageData,  YoutubeData youtubeData,  List<BankAccount> bankAccounts)  $default,) {final _that = this;
switch (_that) {
case _HomeData():
return $default(_that.packageData,_that.youtubeData,_that.bankAccounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PackageData packageData,  YoutubeData youtubeData,  List<BankAccount> bankAccounts)?  $default,) {final _that = this;
switch (_that) {
case _HomeData() when $default != null:
return $default(_that.packageData,_that.youtubeData,_that.bankAccounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeData implements HomeData {
  const _HomeData({required this.packageData, required this.youtubeData, required final  List<BankAccount> bankAccounts}): _bankAccounts = bankAccounts;
  factory _HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);

@override final  PackageData packageData;
@override final  YoutubeData youtubeData;
 final  List<BankAccount> _bankAccounts;
@override List<BankAccount> get bankAccounts {
  if (_bankAccounts is EqualUnmodifiableListView) return _bankAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bankAccounts);
}


/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDataCopyWith<_HomeData> get copyWith => __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeData&&(identical(other.packageData, packageData) || other.packageData == packageData)&&(identical(other.youtubeData, youtubeData) || other.youtubeData == youtubeData)&&const DeepCollectionEquality().equals(other._bankAccounts, _bankAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageData,youtubeData,const DeepCollectionEquality().hash(_bankAccounts));

@override
String toString() {
  return 'HomeData(packageData: $packageData, youtubeData: $youtubeData, bankAccounts: $bankAccounts)';
}


}

/// @nodoc
abstract mixin class _$HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) _then) = __$HomeDataCopyWithImpl;
@override @useResult
$Res call({
 PackageData packageData, YoutubeData youtubeData, List<BankAccount> bankAccounts
});


@override $PackageDataCopyWith<$Res> get packageData;@override $YoutubeDataCopyWith<$Res> get youtubeData;

}
/// @nodoc
class __$HomeDataCopyWithImpl<$Res>
    implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(this._self, this._then);

  final _HomeData _self;
  final $Res Function(_HomeData) _then;

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageData = null,Object? youtubeData = null,Object? bankAccounts = null,}) {
  return _then(_HomeData(
packageData: null == packageData ? _self.packageData : packageData // ignore: cast_nullable_to_non_nullable
as PackageData,youtubeData: null == youtubeData ? _self.youtubeData : youtubeData // ignore: cast_nullable_to_non_nullable
as YoutubeData,bankAccounts: null == bankAccounts ? _self._bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,
  ));
}

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDataCopyWith<$Res> get packageData {
  
  return $PackageDataCopyWith<$Res>(_self.packageData, (value) {
    return _then(_self.copyWith(packageData: value));
  });
}/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeDataCopyWith<$Res> get youtubeData {
  
  return $YoutubeDataCopyWith<$Res>(_self.youtubeData, (value) {
    return _then(_self.copyWith(youtubeData: value));
  });
}
}

// dart format on
