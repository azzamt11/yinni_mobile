// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankAccount {

@HiveField(0) String get bankIcon;@HiveField(1) String get userName;@HiveField(2) String get bankId;@HiveField(3) String get userId;@HiveField(4) String get number;@HiveField(5) String get bankName;
/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountCopyWith<BankAccount> get copyWith => _$BankAccountCopyWithImpl<BankAccount>(this as BankAccount, _$identity);

  /// Serializes this BankAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccount&&(identical(other.bankIcon, bankIcon) || other.bankIcon == bankIcon)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.number, number) || other.number == number)&&(identical(other.bankName, bankName) || other.bankName == bankName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankIcon,userName,bankId,userId,number,bankName);

@override
String toString() {
  return 'BankAccount(bankIcon: $bankIcon, userName: $userName, bankId: $bankId, userId: $userId, number: $number, bankName: $bankName)';
}


}

/// @nodoc
abstract mixin class $BankAccountCopyWith<$Res>  {
  factory $BankAccountCopyWith(BankAccount value, $Res Function(BankAccount) _then) = _$BankAccountCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String bankIcon,@HiveField(1) String userName,@HiveField(2) String bankId,@HiveField(3) String userId,@HiveField(4) String number,@HiveField(5) String bankName
});




}
/// @nodoc
class _$BankAccountCopyWithImpl<$Res>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._self, this._then);

  final BankAccount _self;
  final $Res Function(BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankIcon = null,Object? userName = null,Object? bankId = null,Object? userId = null,Object? number = null,Object? bankName = null,}) {
  return _then(_self.copyWith(
bankIcon: null == bankIcon ? _self.bankIcon : bankIcon // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccount].
extension BankAccountPatterns on BankAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccount value)  $default,){
final _that = this;
switch (_that) {
case _BankAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String bankIcon, @HiveField(1)  String userName, @HiveField(2)  String bankId, @HiveField(3)  String userId, @HiveField(4)  String number, @HiveField(5)  String bankName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.bankIcon,_that.userName,_that.bankId,_that.userId,_that.number,_that.bankName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String bankIcon, @HiveField(1)  String userName, @HiveField(2)  String bankId, @HiveField(3)  String userId, @HiveField(4)  String number, @HiveField(5)  String bankName)  $default,) {final _that = this;
switch (_that) {
case _BankAccount():
return $default(_that.bankIcon,_that.userName,_that.bankId,_that.userId,_that.number,_that.bankName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String bankIcon, @HiveField(1)  String userName, @HiveField(2)  String bankId, @HiveField(3)  String userId, @HiveField(4)  String number, @HiveField(5)  String bankName)?  $default,) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.bankIcon,_that.userName,_that.bankId,_that.userId,_that.number,_that.bankName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccount implements BankAccount {
  const _BankAccount({@HiveField(0) this.bankIcon = "", @HiveField(1) this.userName = "", @HiveField(2) required this.bankId, @HiveField(3) required this.userId, @HiveField(4) this.number = "", @HiveField(5) this.bankName = ""});
  factory _BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);

@override@JsonKey()@HiveField(0) final  String bankIcon;
@override@JsonKey()@HiveField(1) final  String userName;
@override@HiveField(2) final  String bankId;
@override@HiveField(3) final  String userId;
@override@JsonKey()@HiveField(4) final  String number;
@override@JsonKey()@HiveField(5) final  String bankName;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountCopyWith<_BankAccount> get copyWith => __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccount&&(identical(other.bankIcon, bankIcon) || other.bankIcon == bankIcon)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.number, number) || other.number == number)&&(identical(other.bankName, bankName) || other.bankName == bankName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankIcon,userName,bankId,userId,number,bankName);

@override
String toString() {
  return 'BankAccount(bankIcon: $bankIcon, userName: $userName, bankId: $bankId, userId: $userId, number: $number, bankName: $bankName)';
}


}

/// @nodoc
abstract mixin class _$BankAccountCopyWith<$Res> implements $BankAccountCopyWith<$Res> {
  factory _$BankAccountCopyWith(_BankAccount value, $Res Function(_BankAccount) _then) = __$BankAccountCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String bankIcon,@HiveField(1) String userName,@HiveField(2) String bankId,@HiveField(3) String userId,@HiveField(4) String number,@HiveField(5) String bankName
});




}
/// @nodoc
class __$BankAccountCopyWithImpl<$Res>
    implements _$BankAccountCopyWith<$Res> {
  __$BankAccountCopyWithImpl(this._self, this._then);

  final _BankAccount _self;
  final $Res Function(_BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankIcon = null,Object? userName = null,Object? bankId = null,Object? userId = null,Object? number = null,Object? bankName = null,}) {
  return _then(_BankAccount(
bankIcon: null == bankIcon ? _self.bankIcon : bankIcon // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
