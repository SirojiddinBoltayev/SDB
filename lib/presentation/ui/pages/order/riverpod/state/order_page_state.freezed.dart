// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductResponse> get product => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  ProductResponse? get item => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPageStateCopyWith<OrderPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageStateCopyWith<$Res> {
  factory $OrderPageStateCopyWith(
          OrderPageState value, $Res Function(OrderPageState) then) =
      _$OrderPageStateCopyWithImpl<$Res, OrderPageState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ProductResponse> product,
      int totalCount,
      ProductResponse? item,
      int? nextPageKey});
}

/// @nodoc
class _$OrderPageStateCopyWithImpl<$Res, $Val extends OrderPageState>
    implements $OrderPageStateCopyWith<$Res> {
  _$OrderPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = null,
    Object? totalCount = null,
    Object? item = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderPageStateCopyWith<$Res>
    implements $OrderPageStateCopyWith<$Res> {
  factory _$$_OrderPageStateCopyWith(
          _$_OrderPageState value, $Res Function(_$_OrderPageState) then) =
      __$$_OrderPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ProductResponse> product,
      int totalCount,
      ProductResponse? item,
      int? nextPageKey});
}

/// @nodoc
class __$$_OrderPageStateCopyWithImpl<$Res>
    extends _$OrderPageStateCopyWithImpl<$Res, _$_OrderPageState>
    implements _$$_OrderPageStateCopyWith<$Res> {
  __$$_OrderPageStateCopyWithImpl(
      _$_OrderPageState _value, $Res Function(_$_OrderPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = null,
    Object? totalCount = null,
    Object? item = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$_OrderPageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_OrderPageState implements _OrderPageState {
  const _$_OrderPageState(
      {this.isLoading = false,
      final List<ProductResponse> product = const [],
      this.totalCount = 0,
      this.item,
      this.nextPageKey = 1})
      : _product = product;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductResponse> _product;
  @override
  @JsonKey()
  List<ProductResponse> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  @JsonKey()
  final int totalCount;
  @override
  final ProductResponse? item;
  @override
  @JsonKey()
  final int? nextPageKey;

  @override
  String toString() {
    return 'OrderPageState(isLoading: $isLoading, product: $product, totalCount: $totalCount, item: $item, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._product, _product) &&
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
      const DeepCollectionEquality().hash(_product),
      totalCount,
      item,
      nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderPageStateCopyWith<_$_OrderPageState> get copyWith =>
      __$$_OrderPageStateCopyWithImpl<_$_OrderPageState>(this, _$identity);
}

abstract class _OrderPageState implements OrderPageState {
  const factory _OrderPageState(
      {final bool isLoading,
      final List<ProductResponse> product,
      final int totalCount,
      final ProductResponse? item,
      final int? nextPageKey}) = _$_OrderPageState;

  @override
  bool get isLoading;
  @override
  List<ProductResponse> get product;
  @override
  int get totalCount;
  @override
  ProductResponse? get item;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPageStateCopyWith<_$_OrderPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
