// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smartphone_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmartphoneListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;
  List<AllProductResponse> get products => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmartphoneListStateCopyWith<SmartphoneListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartphoneListStateCopyWith<$Res> {
  factory $SmartphoneListStateCopyWith(
          SmartphoneListState value, $Res Function(SmartphoneListState) then) =
      _$SmartphoneListStateCopyWithImpl<$Res, SmartphoneListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorText,
      List<AllProductResponse> products,
      int totalCount,
      int? nextPageKey});
}

/// @nodoc
class _$SmartphoneListStateCopyWithImpl<$Res, $Val extends SmartphoneListState>
    implements $SmartphoneListStateCopyWith<$Res> {
  _$SmartphoneListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorText = null,
    Object? products = null,
    Object? totalCount = null,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AllProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmartphoneListStateCopyWith<$Res>
    implements $SmartphoneListStateCopyWith<$Res> {
  factory _$$_SmartphoneListStateCopyWith(_$_SmartphoneListState value,
          $Res Function(_$_SmartphoneListState) then) =
      __$$_SmartphoneListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorText,
      List<AllProductResponse> products,
      int totalCount,
      int? nextPageKey});
}

/// @nodoc
class __$$_SmartphoneListStateCopyWithImpl<$Res>
    extends _$SmartphoneListStateCopyWithImpl<$Res, _$_SmartphoneListState>
    implements _$$_SmartphoneListStateCopyWith<$Res> {
  __$$_SmartphoneListStateCopyWithImpl(_$_SmartphoneListState _value,
      $Res Function(_$_SmartphoneListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorText = null,
    Object? products = null,
    Object? totalCount = null,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$_SmartphoneListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AllProductResponse>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SmartphoneListState extends _SmartphoneListState {
  const _$_SmartphoneListState(
      {this.isLoading = false,
      this.isError = false,
      this.errorText = "",
      final List<AllProductResponse> products = const [],
      this.totalCount = 0,
      this.nextPageKey = 1})
      : _products = products,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final String errorText;
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
  @JsonKey()
  final int? nextPageKey;

  @override
  String toString() {
    return 'SmartphoneListState(isLoading: $isLoading, isError: $isError, errorText: $errorText, products: $products, totalCount: $totalCount, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartphoneListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, errorText,
      const DeepCollectionEquality().hash(_products), totalCount, nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartphoneListStateCopyWith<_$_SmartphoneListState> get copyWith =>
      __$$_SmartphoneListStateCopyWithImpl<_$_SmartphoneListState>(
          this, _$identity);
}

abstract class _SmartphoneListState extends SmartphoneListState {
  const factory _SmartphoneListState(
      {final bool isLoading,
      final bool isError,
      final String errorText,
      final List<AllProductResponse> products,
      final int totalCount,
      final int? nextPageKey}) = _$_SmartphoneListState;
  const _SmartphoneListState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorText;
  @override
  List<AllProductResponse> get products;
  @override
  int get totalCount;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$_SmartphoneListStateCopyWith<_$_SmartphoneListState> get copyWith =>
      throw _privateConstructorUsedError;
}
