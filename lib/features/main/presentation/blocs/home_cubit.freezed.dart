// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialHomeState value)?  initial,TResult Function( LoadingHomeState value)?  loading,TResult Function( LoadedHomeState value)?  loaded,TResult Function( ErrorHomeState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial(_that);case LoadingHomeState() when loading != null:
return loading(_that);case LoadedHomeState() when loaded != null:
return loaded(_that);case ErrorHomeState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialHomeState value)  initial,required TResult Function( LoadingHomeState value)  loading,required TResult Function( LoadedHomeState value)  loaded,required TResult Function( ErrorHomeState value)  error,}){
final _that = this;
switch (_that) {
case InitialHomeState():
return initial(_that);case LoadingHomeState():
return loading(_that);case LoadedHomeState():
return loaded(_that);case ErrorHomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialHomeState value)?  initial,TResult? Function( LoadingHomeState value)?  loading,TResult? Function( LoadedHomeState value)?  loaded,TResult? Function( ErrorHomeState value)?  error,}){
final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial(_that);case LoadingHomeState() when loading != null:
return loading(_that);case LoadedHomeState() when loaded != null:
return loaded(_that);case ErrorHomeState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Home? loadingHome)?  loading,TResult Function( Home? home)?  loaded,TResult Function( Home? errorHome,  bool? offline)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial();case LoadingHomeState() when loading != null:
return loading(_that.loadingHome);case LoadedHomeState() when loaded != null:
return loaded(_that.home);case ErrorHomeState() when error != null:
return error(_that.errorHome,_that.offline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Home? loadingHome)  loading,required TResult Function( Home? home)  loaded,required TResult Function( Home? errorHome,  bool? offline)  error,}) {final _that = this;
switch (_that) {
case InitialHomeState():
return initial();case LoadingHomeState():
return loading(_that.loadingHome);case LoadedHomeState():
return loaded(_that.home);case ErrorHomeState():
return error(_that.errorHome,_that.offline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Home? loadingHome)?  loading,TResult? Function( Home? home)?  loaded,TResult? Function( Home? errorHome,  bool? offline)?  error,}) {final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial();case LoadingHomeState() when loading != null:
return loading(_that.loadingHome);case LoadedHomeState() when loaded != null:
return loaded(_that.home);case ErrorHomeState() when error != null:
return error(_that.errorHome,_that.offline);case _:
  return null;

}
}

}

/// @nodoc


class InitialHomeState with DiagnosticableTreeMixin implements HomeState {
  const InitialHomeState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialHomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeState.initial()';
}


}




/// @nodoc


class LoadingHomeState with DiagnosticableTreeMixin implements HomeState {
  const LoadingHomeState({required this.loadingHome});
  

 final  Home? loadingHome;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingHomeStateCopyWith<LoadingHomeState> get copyWith => _$LoadingHomeStateCopyWithImpl<LoadingHomeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeState.loading'))
    ..add(DiagnosticsProperty('loadingHome', loadingHome));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingHomeState&&(identical(other.loadingHome, loadingHome) || other.loadingHome == loadingHome));
}


@override
int get hashCode => Object.hash(runtimeType,loadingHome);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeState.loading(loadingHome: $loadingHome)';
}


}

/// @nodoc
abstract mixin class $LoadingHomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $LoadingHomeStateCopyWith(LoadingHomeState value, $Res Function(LoadingHomeState) _then) = _$LoadingHomeStateCopyWithImpl;
@useResult
$Res call({
 Home? loadingHome
});




}
/// @nodoc
class _$LoadingHomeStateCopyWithImpl<$Res>
    implements $LoadingHomeStateCopyWith<$Res> {
  _$LoadingHomeStateCopyWithImpl(this._self, this._then);

  final LoadingHomeState _self;
  final $Res Function(LoadingHomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loadingHome = freezed,}) {
  return _then(LoadingHomeState(
loadingHome: freezed == loadingHome ? _self.loadingHome : loadingHome // ignore: cast_nullable_to_non_nullable
as Home?,
  ));
}


}

/// @nodoc


class LoadedHomeState with DiagnosticableTreeMixin implements HomeState {
  const LoadedHomeState({required this.home});
  

 final  Home? home;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedHomeStateCopyWith<LoadedHomeState> get copyWith => _$LoadedHomeStateCopyWithImpl<LoadedHomeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeState.loaded'))
    ..add(DiagnosticsProperty('home', home));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedHomeState&&(identical(other.home, home) || other.home == home));
}


@override
int get hashCode => Object.hash(runtimeType,home);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeState.loaded(home: $home)';
}


}

/// @nodoc
abstract mixin class $LoadedHomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $LoadedHomeStateCopyWith(LoadedHomeState value, $Res Function(LoadedHomeState) _then) = _$LoadedHomeStateCopyWithImpl;
@useResult
$Res call({
 Home? home
});




}
/// @nodoc
class _$LoadedHomeStateCopyWithImpl<$Res>
    implements $LoadedHomeStateCopyWith<$Res> {
  _$LoadedHomeStateCopyWithImpl(this._self, this._then);

  final LoadedHomeState _self;
  final $Res Function(LoadedHomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? home = freezed,}) {
  return _then(LoadedHomeState(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,
  ));
}


}

/// @nodoc


class ErrorHomeState with DiagnosticableTreeMixin implements HomeState {
  const ErrorHomeState({required this.errorHome, required this.offline});
  

 final  Home? errorHome;
 final  bool? offline;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorHomeStateCopyWith<ErrorHomeState> get copyWith => _$ErrorHomeStateCopyWithImpl<ErrorHomeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeState.error'))
    ..add(DiagnosticsProperty('errorHome', errorHome))..add(DiagnosticsProperty('offline', offline));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorHomeState&&(identical(other.errorHome, errorHome) || other.errorHome == errorHome)&&(identical(other.offline, offline) || other.offline == offline));
}


@override
int get hashCode => Object.hash(runtimeType,errorHome,offline);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeState.error(errorHome: $errorHome, offline: $offline)';
}


}

/// @nodoc
abstract mixin class $ErrorHomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ErrorHomeStateCopyWith(ErrorHomeState value, $Res Function(ErrorHomeState) _then) = _$ErrorHomeStateCopyWithImpl;
@useResult
$Res call({
 Home? errorHome, bool? offline
});




}
/// @nodoc
class _$ErrorHomeStateCopyWithImpl<$Res>
    implements $ErrorHomeStateCopyWith<$Res> {
  _$ErrorHomeStateCopyWithImpl(this._self, this._then);

  final ErrorHomeState _self;
  final $Res Function(ErrorHomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHome = freezed,Object? offline = freezed,}) {
  return _then(ErrorHomeState(
errorHome: freezed == errorHome ? _self.errorHome : errorHome // ignore: cast_nullable_to_non_nullable
as Home?,offline: freezed == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
