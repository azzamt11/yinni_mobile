// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InitialState {

 bool? get showingBanner; int? get page; bool? get redirecting;
/// Create a copy of InitialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialStateCopyWith<InitialState> get copyWith => _$InitialStateCopyWithImpl<InitialState>(this as InitialState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState&&(identical(other.showingBanner, showingBanner) || other.showingBanner == showingBanner)&&(identical(other.page, page) || other.page == page)&&(identical(other.redirecting, redirecting) || other.redirecting == redirecting));
}


@override
int get hashCode => Object.hash(runtimeType,showingBanner,page,redirecting);

@override
String toString() {
  return 'InitialState(showingBanner: $showingBanner, page: $page, redirecting: $redirecting)';
}


}

/// @nodoc
abstract mixin class $InitialStateCopyWith<$Res>  {
  factory $InitialStateCopyWith(InitialState value, $Res Function(InitialState) _then) = _$InitialStateCopyWithImpl;
@useResult
$Res call({
 bool? showingBanner, int? page, bool? redirecting
});




}
/// @nodoc
class _$InitialStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(this._self, this._then);

  final InitialState _self;
  final $Res Function(InitialState) _then;

/// Create a copy of InitialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showingBanner = freezed,Object? page = freezed,Object? redirecting = freezed,}) {
  return _then(_self.copyWith(
showingBanner: freezed == showingBanner ? _self.showingBanner : showingBanner // ignore: cast_nullable_to_non_nullable
as bool?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,redirecting: freezed == redirecting ? _self.redirecting : redirecting // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InitialState].
extension InitialStatePatterns on InitialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialInitialState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialInitialState value)  initial,}){
final _that = this;
switch (_that) {
case _InitialInitialState():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialInitialState value)?  initial,}){
final _that = this;
switch (_that) {
case _InitialInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? showingBanner,  int? page,  bool? redirecting)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialInitialState() when initial != null:
return initial(_that.showingBanner,_that.page,_that.redirecting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? showingBanner,  int? page,  bool? redirecting)  initial,}) {final _that = this;
switch (_that) {
case _InitialInitialState():
return initial(_that.showingBanner,_that.page,_that.redirecting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? showingBanner,  int? page,  bool? redirecting)?  initial,}) {final _that = this;
switch (_that) {
case _InitialInitialState() when initial != null:
return initial(_that.showingBanner,_that.page,_that.redirecting);case _:
  return null;

}
}

}

/// @nodoc


class _InitialInitialState implements InitialState {
  const _InitialInitialState({this.showingBanner, this.page, this.redirecting});
  

@override final  bool? showingBanner;
@override final  int? page;
@override final  bool? redirecting;

/// Create a copy of InitialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialInitialStateCopyWith<_InitialInitialState> get copyWith => __$InitialInitialStateCopyWithImpl<_InitialInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialInitialState&&(identical(other.showingBanner, showingBanner) || other.showingBanner == showingBanner)&&(identical(other.page, page) || other.page == page)&&(identical(other.redirecting, redirecting) || other.redirecting == redirecting));
}


@override
int get hashCode => Object.hash(runtimeType,showingBanner,page,redirecting);

@override
String toString() {
  return 'InitialState.initial(showingBanner: $showingBanner, page: $page, redirecting: $redirecting)';
}


}

/// @nodoc
abstract mixin class _$InitialInitialStateCopyWith<$Res> implements $InitialStateCopyWith<$Res> {
  factory _$InitialInitialStateCopyWith(_InitialInitialState value, $Res Function(_InitialInitialState) _then) = __$InitialInitialStateCopyWithImpl;
@override @useResult
$Res call({
 bool? showingBanner, int? page, bool? redirecting
});




}
/// @nodoc
class __$InitialInitialStateCopyWithImpl<$Res>
    implements _$InitialInitialStateCopyWith<$Res> {
  __$InitialInitialStateCopyWithImpl(this._self, this._then);

  final _InitialInitialState _self;
  final $Res Function(_InitialInitialState) _then;

/// Create a copy of InitialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showingBanner = freezed,Object? page = freezed,Object? redirecting = freezed,}) {
  return _then(_InitialInitialState(
showingBanner: freezed == showingBanner ? _self.showingBanner : showingBanner // ignore: cast_nullable_to_non_nullable
as bool?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,redirecting: freezed == redirecting ? _self.redirecting : redirecting // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
