// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_slug_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AllProductResponse> get products => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  AllProductResponse? get item => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<AllProductResponse> products,
      int totalCount,
      AllProductResponse? item,
      int? nextPageKey});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? totalCount = null,
    Object? item = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AllProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as AllProductResponse?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$_ProductListStateCopyWith(
          _$_ProductListState value, $Res Function(_$_ProductListState) then) =
      __$$_ProductListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<AllProductResponse> products,
      int totalCount,
      AllProductResponse? item,
      int? nextPageKey});
}

/// @nodoc
class __$$_ProductListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_ProductListState>
    implements _$$_ProductListStateCopyWith<$Res> {
  __$$_ProductListStateCopyWithImpl(
      _$_ProductListState _value, $Res Function(_$_ProductListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? totalCount = null,
    Object? item = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$_ProductListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AllProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as AllProductResponse?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ProductListState implements _ProductListState {
  const _$_ProductListState(
      {this.isLoading = false,
      final List<AllProductResponse> products = const [],
      this.totalCount = 0,
      this.item,
      this.nextPageKey = 1})
      : _products = products;

  @override
  @JsonKey()
  final bool isLoading;
  final List<AllProductResponse> _products;
  @override
  @JsonKey()
  List<AllProductResponse> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final int totalCount;
  @override
  final AllProductResponse? item;
  @override
  @JsonKey()
  final int? nextPageKey;

  @override
  String toString() {
    return 'ProductListState(isLoading: $isLoading, products: $products, totalCount: $totalCount, item: $item, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      totalCount,
      item,
      nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      __$$_ProductListStateCopyWithImpl<_$_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  const factory _ProductListState(
      {final bool isLoading,
      final List<AllProductResponse> products,
      final int totalCount,
      final AllProductResponse? item,
      final int? nextPageKey}) = _$_ProductListState;

  @override
  bool get isLoading;
  @override
  List<AllProductResponse> get products;
  @override
  int get totalCount;
  @override
  AllProductResponse? get item;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}
