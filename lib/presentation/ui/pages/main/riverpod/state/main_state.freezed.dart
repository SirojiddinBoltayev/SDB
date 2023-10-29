// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  int get indexPage => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  List<NavItemEnum> get navItem => throw _privateConstructorUsedError;
  List<GlobalKey<NavigatorState>> get listKey =>
      throw _privateConstructorUsedError;
  List<String> get icons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {int indexPage,
      String lang,
      List<NavItemEnum> navItem,
      List<GlobalKey<NavigatorState>> listKey,
      List<String> icons});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexPage = null,
    Object? lang = null,
    Object? navItem = null,
    Object? listKey = null,
    Object? icons = null,
  }) {
    return _then(_value.copyWith(
      indexPage: null == indexPage
          ? _value.indexPage
          : indexPage // ignore: cast_nullable_to_non_nullable
              as int,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      navItem: null == navItem
          ? _value.navItem
          : navItem // ignore: cast_nullable_to_non_nullable
              as List<NavItemEnum>,
      listKey: null == listKey
          ? _value.listKey
          : listKey // ignore: cast_nullable_to_non_nullable
              as List<GlobalKey<NavigatorState>>,
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int indexPage,
      String lang,
      List<NavItemEnum> navItem,
      List<GlobalKey<NavigatorState>> listKey,
      List<String> icons});
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexPage = null,
    Object? lang = null,
    Object? navItem = null,
    Object? listKey = null,
    Object? icons = null,
  }) {
    return _then(_$_MainState(
      indexPage: null == indexPage
          ? _value.indexPage
          : indexPage // ignore: cast_nullable_to_non_nullable
              as int,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      navItem: null == navItem
          ? _value._navItem
          : navItem // ignore: cast_nullable_to_non_nullable
              as List<NavItemEnum>,
      listKey: null == listKey
          ? _value._listKey
          : listKey // ignore: cast_nullable_to_non_nullable
              as List<GlobalKey<NavigatorState>>,
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MainState extends _MainState {
  const _$_MainState(
      {this.indexPage = 0,
      this.lang = "",
      final List<NavItemEnum> navItem = const [
        NavItemEnum.home,
        NavItemEnum.catalog,
        NavItemEnum.order,
        NavItemEnum.profile
      ],
      final List<GlobalKey<NavigatorState>> listKey = const [],
      final List<String> icons = const []})
      : _navItem = navItem,
        _listKey = listKey,
        _icons = icons,
        super._();

  @override
  @JsonKey()
  final int indexPage;
  @override
  @JsonKey()
  final String lang;
  final List<NavItemEnum> _navItem;
  @override
  @JsonKey()
  List<NavItemEnum> get navItem {
    if (_navItem is EqualUnmodifiableListView) return _navItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navItem);
  }

  final List<GlobalKey<NavigatorState>> _listKey;
  @override
  @JsonKey()
  List<GlobalKey<NavigatorState>> get listKey {
    if (_listKey is EqualUnmodifiableListView) return _listKey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listKey);
  }

  final List<String> _icons;
  @override
  @JsonKey()
  List<String> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  String toString() {
    return 'MainState(indexPage: $indexPage, lang: $lang, navItem: $navItem, listKey: $listKey, icons: $icons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            (identical(other.indexPage, indexPage) ||
                other.indexPage == indexPage) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            const DeepCollectionEquality().equals(other._navItem, _navItem) &&
            const DeepCollectionEquality().equals(other._listKey, _listKey) &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      indexPage,
      lang,
      const DeepCollectionEquality().hash(_navItem),
      const DeepCollectionEquality().hash(_listKey),
      const DeepCollectionEquality().hash(_icons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);
}

abstract class _MainState extends MainState {
  const factory _MainState(
      {final int indexPage,
      final String lang,
      final List<NavItemEnum> navItem,
      final List<GlobalKey<NavigatorState>> listKey,
      final List<String> icons}) = _$_MainState;
  const _MainState._() : super._();

  @override
  int get indexPage;
  @override
  String get lang;
  @override
  List<NavItemEnum> get navItem;
  @override
  List<GlobalKey<NavigatorState>> get listKey;
  @override
  List<String> get icons;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
