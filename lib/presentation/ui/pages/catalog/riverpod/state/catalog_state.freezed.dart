// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isResponseError => throw _privateConstructorUsedError;
  CategoryResponse? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
  @useResult
  $Res call({bool isLoading, bool isResponseError, CategoryResponse? category});
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResponseError = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResponseError: null == isResponseError
          ? _value.isResponseError
          : isResponseError // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isResponseError, CategoryResponse? category});
}

/// @nodoc
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$_CatalogState>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResponseError = null,
    Object? category = freezed,
  }) {
    return _then(_$_CatalogState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResponseError: null == isResponseError
          ? _value.isResponseError
          : isResponseError // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryResponse?,
    ));
  }
}

/// @nodoc

class _$_CatalogState extends _CatalogState {
  const _$_CatalogState(
      {this.isLoading = false, this.isResponseError = false, this.category})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isResponseError;
  @override
  final CategoryResponse? category;

  @override
  String toString() {
    return 'CatalogState(isLoading: $isLoading, isResponseError: $isResponseError, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isResponseError, isResponseError) ||
                other.isResponseError == isResponseError) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isResponseError, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);
}

abstract class _CatalogState extends CatalogState {
  const factory _CatalogState(
      {final bool isLoading,
      final bool isResponseError,
      final CategoryResponse? category}) = _$_CatalogState;
  const _CatalogState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isResponseError;
  @override
  CategoryResponse? get category;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
