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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserData data)?  loaded,TResult Function( Error? error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial();case LoadingAuthState() when loading != null:
return loading();case LoadedAuthState() when loaded != null:
return loaded(_that.data);case ErrorAuthState() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserData data)  loaded,required TResult Function( Error? error)  error,}) {final _that = this;
switch (_that) {
case InitialAuthState():
return initial();case LoadingAuthState():
return loading();case LoadedAuthState():
return loaded(_that.data);case ErrorAuthState():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserData data)?  loaded,TResult? Function( Error? error)?  error,}) {final _that = this;
switch (_that) {
case InitialAuthState() when initial != null:
return initial();case LoadingAuthState() when loading != null:
return loading();case LoadedAuthState() when loaded != null:
return loaded(_that.data);case ErrorAuthState() when error != null:
return error(_that.error);case _:
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
  const LoadingAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class LoadedAuthState implements AuthState {
  const LoadedAuthState({required this.data});
  

 final  UserData data;

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
 UserData data
});


$UserDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoadedAuthStateCopyWithImpl<$Res>
    implements $LoadedAuthStateCopyWith<$Res> {
  _$LoadedAuthStateCopyWithImpl(this._self, this._then);

  final LoadedAuthState _self;
  final $Res Function(LoadedAuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(LoadedAuthState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get data {
  
  return $UserDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class ErrorAuthState implements AuthState {
  const ErrorAuthState({required this.error});
  

 final  Error? error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorAuthStateCopyWith<ErrorAuthState> get copyWith => _$ErrorAuthStateCopyWithImpl<ErrorAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorAuthState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorAuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorAuthStateCopyWith(ErrorAuthState value, $Res Function(ErrorAuthState) _then) = _$ErrorAuthStateCopyWithImpl;
@useResult
$Res call({
 Error? error
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
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ErrorAuthState(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Error?,
  ));
}


}

// dart format on
