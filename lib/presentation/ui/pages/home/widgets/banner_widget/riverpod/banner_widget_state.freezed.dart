// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_widget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerWidgetState {
  int get pageIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isResponseError => throw _privateConstructorUsedError;
  List<BannerResponse> get banners => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerWidgetStateCopyWith<BannerWidgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerWidgetStateCopyWith<$Res> {
  factory $BannerWidgetStateCopyWith(
          BannerWidgetState value, $Res Function(BannerWidgetState) then) =
      _$BannerWidgetStateCopyWithImpl<$Res, BannerWidgetState>;
  @useResult
  $Res call(
      {int pageIndex,
      bool isLoading,
      bool isResponseError,
      List<BannerResponse> banners});
}

/// @nodoc
class _$BannerWidgetStateCopyWithImpl<$Res, $Val extends BannerWidgetState>
    implements $BannerWidgetStateCopyWith<$Res> {
  _$BannerWidgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? isLoading = null,
    Object? isResponseError = null,
    Object? banners = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResponseError: null == isResponseError
          ? _value.isResponseError
          : isResponseError // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerWidgetStateCopyWith<$Res>
    implements $BannerWidgetStateCopyWith<$Res> {
  factory _$$_BannerWidgetStateCopyWith(_$_BannerWidgetState value,
          $Res Function(_$_BannerWidgetState) then) =
      __$$_BannerWidgetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageIndex,
      bool isLoading,
      bool isResponseError,
      List<BannerResponse> banners});
}

/// @nodoc
class __$$_BannerWidgetStateCopyWithImpl<$Res>
    extends _$BannerWidgetStateCopyWithImpl<$Res, _$_BannerWidgetState>
    implements _$$_BannerWidgetStateCopyWith<$Res> {
  __$$_BannerWidgetStateCopyWithImpl(
      _$_BannerWidgetState _value, $Res Function(_$_BannerWidgetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? isLoading = null,
    Object? isResponseError = null,
    Object? banners = null,
  }) {
    return _then(_$_BannerWidgetState(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResponseError: null == isResponseError
          ? _value.isResponseError
          : isResponseError // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerResponse>,
    ));
  }
}

/// @nodoc

class _$_BannerWidgetState extends _BannerWidgetState {
  const _$_BannerWidgetState(
      {this.pageIndex = 0,
      this.isLoading = true,
      this.isResponseError = false,
      final List<BannerResponse> banners = const []})
      : _banners = banners,
        super._();

  @override
  @JsonKey()
  final int pageIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isResponseError;
  final List<BannerResponse> _banners;
  @override
  @JsonKey()
  List<BannerResponse> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannerWidgetState(pageIndex: $pageIndex, isLoading: $isLoading, isResponseError: $isResponseError, banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerWidgetState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isResponseError, isResponseError) ||
                other.isResponseError == isResponseError) &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex, isLoading,
      isResponseError, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerWidgetStateCopyWith<_$_BannerWidgetState> get copyWith =>
      __$$_BannerWidgetStateCopyWithImpl<_$_BannerWidgetState>(
          this, _$identity);
}

abstract class _BannerWidgetState extends BannerWidgetState {
  const factory _BannerWidgetState(
      {final int pageIndex,
      final bool isLoading,
      final bool isResponseError,
      final List<BannerResponse> banners}) = _$_BannerWidgetState;
  const _BannerWidgetState._() : super._();

  @override
  int get pageIndex;
  @override
  bool get isLoading;
  @override
  bool get isResponseError;
  @override
  List<BannerResponse> get banners;
  @override
  @JsonKey(ignore: true)
  _$$_BannerWidgetStateCopyWith<_$_BannerWidgetState> get copyWith =>
      throw _privateConstructorUsedError;
}
