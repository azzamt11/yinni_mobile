// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialAuthState value)?  initial,TResult Function( LoadingAuthState value)?  loading,TResult Function( LoadedAuthState value)?  loaded,TResult Function( ErrorAuthState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial(_that);case LoadingAuthState() when loading != null:
return loading(_that);case LoadedAuthState() when loaded != null:
return loaded(_that);case ErrorAuthState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialAuthState value)  initial,required TResult Function( LoadingAuthState value)  loading,required TResult Function( LoadedAuthState value)  loaded,required TResult Function( ErrorAuthState value)  error,}){
final _that = this;
switch (_that) {
case InitialAuthState():
return initial(_that);case LoadingAuthState():
return loading(_that);case LoadedAuthState():
return loaded(_that);case ErrorAuthState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialAuthState value)?  initial,TResult? Function( LoadingAuthState value)?  loading,TResult? Function( LoadedAuthState value)?  loaded,TResult? Function( ErrorAuthState value)?  error,}){
final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial(_that);case LoadingAuthState() when loading != null:
return loading(_that);case LoadedAuthState() when loaded != null:
return loaded(_that);case ErrorAuthState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Auth? loadingAuth)?  loading,TResult Function( Auth? data)?  loaded,TResult Function( Auth? errorAuth,  bool? offline)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial();case LoadingAuthState() when loading != null:
return loading(_that.loadingAuth);case LoadedAuthState() when loaded != null:
return loaded(_that.data);case ErrorAuthState() when error != null:
return error(_that.errorAuth,_that.offline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Auth? loadingAuth)  loading,required TResult Function( Auth? data)  loaded,required TResult Function( Auth? errorAuth,  bool? offline)  error,}) {final _that = this;
switch (_that) {
case InitialAuthState():
return initial();case LoadingAuthState():
return loading(_that.loadingAuth);case LoadedAuthState():
return loaded(_that.data);case ErrorAuthState():
return error(_that.errorAuth,_that.offline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Auth? loadingAuth)?  loading,TResult? Function( Auth? data)?  loaded,TResult? Function( Auth? errorAuth,  bool? offline)?  error,}) {final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial();case LoadingAuthState() when loading != null:
return loading(_that.loadingAuth);case LoadedAuthState() when loaded != null:
return loaded(_that.data);case ErrorAuthState() when error != null:
return error(_that.errorAuth,_that.offline);case _:
  return null;

}
}

}

/// @nodoc


class InitialAuthState implements AuthState {
  const InitialAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class LoadingAuthState implements AuthState {
  const LoadingAuthState({required this.loadingAuth});
  

 final  Auth? loadingAuth;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingAuthStateCopyWith<LoadingAuthState> get copyWith => _$LoadingAuthStateCopyWithImpl<LoadingAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingAuthState&&(identical(other.loadingAuth, loadingAuth) || other.loadingAuth == loadingAuth));
}


@override
int get hashCode => Object.hash(runtimeType,loadingAuth);

@override
String toString() {
  return 'AuthState.loading(loadingAuth: $loadingAuth)';
}


}

/// @nodoc
abstract mixin class $LoadingAuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoadingAuthStateCopyWith(LoadingAuthState value, $Res Function(LoadingAuthState) _then) = _$LoadingAuthStateCopyWithImpl;
@useResult
$Res call({
 Auth? loadingAuth
});




}
/// @nodoc
class _$LoadingAuthStateCopyWithImpl<$Res>
    implements $LoadingAuthStateCopyWith<$Res> {
  _$LoadingAuthStateCopyWithImpl(this._self, this._then);

  final LoadingAuthState _self;
  final $Res Function(LoadingAuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loadingAuth = freezed,}) {
  return _then(LoadingAuthState(
loadingAuth: freezed == loadingAuth ? _self.loadingAuth : loadingAuth // ignore: cast_nullable_to_non_nullable
as Auth?,
  ));
}


}

/// @nodoc


class LoadedAuthState implements AuthState {
  const LoadedAuthState({required this.data});
  

 final  Auth? data;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedAuthStateCopyWith<LoadedAuthState> get copyWith => _$LoadedAuthStateCopyWithImpl<LoadedAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedAuthState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AuthState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadedAuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoadedAuthStateCopyWith(LoadedAuthState value, $Res Function(LoadedAuthState) _then) = _$LoadedAuthStateCopyWithImpl;
@useResult
$Res call({
 Auth? data
});




}
/// @nodoc
class _$LoadedAuthStateCopyWithImpl<$Res>
    implements $LoadedAuthStateCopyWith<$Res> {
  _$LoadedAuthStateCopyWithImpl(this._self, this._then);

  final LoadedAuthState _self;
  final $Res Function(LoadedAuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoadedAuthState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Auth?,
  ));
}


}

/// @nodoc


class ErrorAuthState implements AuthState {
  const ErrorAuthState({required this.errorAuth, required this.offline});
  

 final  Auth? errorAuth;
 final  bool? offline;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorAuthStateCopyWith<ErrorAuthState> get copyWith => _$ErrorAuthStateCopyWithImpl<ErrorAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorAuthState&&(identical(other.errorAuth, errorAuth) || other.errorAuth == errorAuth)&&(identical(other.offline, offline) || other.offline == offline));
}


@override
int get hashCode => Object.hash(runtimeType,errorAuth,offline);

@override
String toString() {
  return 'AuthState.error(errorAuth: $errorAuth, offline: $offline)';
}


}

/// @nodoc
abstract mixin class $ErrorAuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorAuthStateCopyWith(ErrorAuthState value, $Res Function(ErrorAuthState) _then) = _$ErrorAuthStateCopyWithImpl;
@useResult
$Res call({
 Auth? errorAuth, bool? offline
});




}
/// @nodoc
class _$ErrorAuthStateCopyWithImpl<$Res>
    implements $ErrorAuthStateCopyWith<$Res> {
  _$ErrorAuthStateCopyWithImpl(this._self, this._then);

  final ErrorAuthState _self;
  final $Res Function(ErrorAuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorAuth = freezed,Object? offline = freezed,}) {
  return _then(ErrorAuthState(
errorAuth: freezed == errorAuth ? _self.errorAuth : errorAuth // ignore: cast_nullable_to_non_nullable
as Auth?,offline: freezed == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
