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
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ProductData> products,  ProductData? selectedProduct,  int? total,  int? page,  int? pageSize)?  loaded,TResult Function( HomeError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial();case LoadingHomeState() when loading != null:
return loading();case LoadedHomeState() when loaded != null:
return loaded(_that.products,_that.selectedProduct,_that.total,_that.page,_that.pageSize);case ErrorHomeState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ProductData> products,  ProductData? selectedProduct,  int? total,  int? page,  int? pageSize)  loaded,required TResult Function( HomeError error)  error,}) {final _that = this;
switch (_that) {
case InitialHomeState():
return initial();case LoadingHomeState():
return loading();case LoadedHomeState():
return loaded(_that.products,_that.selectedProduct,_that.total,_that.page,_that.pageSize);case ErrorHomeState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ProductData> products,  ProductData? selectedProduct,  int? total,  int? page,  int? pageSize)?  loaded,TResult? Function( HomeError error)?  error,}) {final _that = this;
switch (_that) {
case InitialHomeState() when initial != null:
return initial();case LoadingHomeState() when loading != null:
return loading();case LoadedHomeState() when loaded != null:
return loaded(_that.products,_that.selectedProduct,_that.total,_that.page,_that.pageSize);case ErrorHomeState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class InitialHomeState implements HomeState {
  const InitialHomeState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialHomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class LoadingHomeState implements HomeState {
  const LoadingHomeState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingHomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class LoadedHomeState implements HomeState {
  const LoadedHomeState({required final  List<ProductData> products, this.selectedProduct, this.total, this.page, this.pageSize}): _products = products;
  

 final  List<ProductData> _products;
 List<ProductData> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  ProductData? selectedProduct;
 final  int? total;
 final  int? page;
 final  int? pageSize;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedHomeStateCopyWith<LoadedHomeState> get copyWith => _$LoadedHomeStateCopyWithImpl<LoadedHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedHomeState&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.selectedProduct, selectedProduct) || other.selectedProduct == selectedProduct)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),selectedProduct,total,page,pageSize);

@override
String toString() {
  return 'HomeState.loaded(products: $products, selectedProduct: $selectedProduct, total: $total, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $LoadedHomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $LoadedHomeStateCopyWith(LoadedHomeState value, $Res Function(LoadedHomeState) _then) = _$LoadedHomeStateCopyWithImpl;
@useResult
$Res call({
 List<ProductData> products, ProductData? selectedProduct, int? total, int? page, int? pageSize
});


$ProductDataCopyWith<$Res>? get selectedProduct;

}
/// @nodoc
class _$LoadedHomeStateCopyWithImpl<$Res>
    implements $LoadedHomeStateCopyWith<$Res> {
  _$LoadedHomeStateCopyWithImpl(this._self, this._then);

  final LoadedHomeState _self;
  final $Res Function(LoadedHomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? selectedProduct = freezed,Object? total = freezed,Object? page = freezed,Object? pageSize = freezed,}) {
  return _then(LoadedHomeState(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductData>,selectedProduct: freezed == selectedProduct ? _self.selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as ProductData?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDataCopyWith<$Res>? get selectedProduct {
    if (_self.selectedProduct == null) {
    return null;
  }

  return $ProductDataCopyWith<$Res>(_self.selectedProduct!, (value) {
    return _then(_self.copyWith(selectedProduct: value));
  });
}
}

/// @nodoc


class ErrorHomeState implements HomeState {
  const ErrorHomeState({required this.error});
  

 final  HomeError error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorHomeStateCopyWith<ErrorHomeState> get copyWith => _$ErrorHomeStateCopyWithImpl<ErrorHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorHomeState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorHomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ErrorHomeStateCopyWith(ErrorHomeState value, $Res Function(ErrorHomeState) _then) = _$ErrorHomeStateCopyWithImpl;
@useResult
$Res call({
 HomeError error
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
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorHomeState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as HomeError,
  ));
}


}

// dart format on
