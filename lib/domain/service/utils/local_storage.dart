
import 'package:SDB/domain/service/utils/lang_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';

class LocalStorage {
  static SharedPreferences? _preferences;

  LocalStorage._();

  static LocalStorage? _localStorage;

  static LocalStorage instance = LocalStorage._();

  static Future<LocalStorage> getInstance() async {
    if (_localStorage == null) {
      _localStorage = LocalStorage._();
      await _localStorage!._init();
    }
    return _localStorage!;
  }

  static Future<SharedPreferences> getSharedPreferences() async {
    if (_preferences == null) {
      _localStorage = LocalStorage._();
      await _localStorage!._init();
    }
    return _preferences!;
  }

  Future<void> _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setRefreshToken(String? refreshToken) async {
    if (_preferences != null) {
      await _preferences!
          .setString(AppConstants.refreshToken, refreshToken ?? '');
    }
  }

  String getRefreshToken() =>
      _preferences?.getString(AppConstants.refreshToken) ?? '';

  void deleteRefreshToken() => _preferences?.remove(AppConstants.refreshToken);


  Future<void> setAccessToken(String? accessToken) async {
    if (_preferences != null) {
      await _preferences!
          .setString(AppConstants.accessToken, accessToken ?? '');
    }
  }

  String getAccessToken() =>
      _preferences?.getString(AppConstants.accessToken) ?? '';

  void deleteAccessToken() => _preferences?.remove(AppConstants.accessToken);


  Future<void> setNumber(String? number) async {
    if (_preferences != null) {
      await _preferences!.setString(AppConstants.number, number ?? '');
    }
  }

  String getNumber() => _preferences?.getString(AppConstants.number) ?? 'your number';

  void deleteNumber() => _preferences?.remove(AppConstants.number);


  Future<void> setLoginVerify(bool? isOk) async {
    if (_preferences != null) {
      await _preferences!.setBool(AppConstants.valid, isOk ?? false);
    }
  }

  bool getLoginVerify() => _preferences?.getBool(AppConstants.valid) ?? false;

  void deleteLoginVerify() => _preferences?.remove(AppConstants.valid);


  Future<void> setOnBoardingDisable(bool? isDisable) async {
    if (_preferences != null) {
      await _preferences!.setBool(AppConstants.onBoarding, isDisable ?? false);
    }
  }

  bool getOnBoardingDisable() =>
      _preferences?.getBool(AppConstants.onBoarding) ?? false;

  void deleteOnBoardingDisable() =>
      _preferences?.remove(AppConstants.onBoarding);


  Future<void> setLang(String? lang) async {
    if (_preferences != null) {
      await _preferences!.setString(
          AppConstants.lang, lang ?? Lang.supportedLocales[0].countryCode!);
    }
  }

  String getLang() =>
      _preferences?.getString(AppConstants.lang) ??
      Lang.supportedLocales[0].countryCode!;

  void deleteLang() => _preferences?.remove(AppConstants.lang);


  Future<void> setUserName(String? name) async {
    if (_preferences != null) {
      await _preferences!.setString(
          AppConstants.name, name ?? "First Name");
    }
  }

  String getUserName() =>
      _preferences?.getString(AppConstants.name) ??
      "User Name";

  void deleteUserName() => _preferences?.remove(AppConstants.name);


  Future<void> setData(String? data,String route) async {
    if (_preferences != null) {
      await _preferences!.setString(
          route, data ?? "data");
    }
  }

  String getData(String route) =>
      _preferences?.getString(route) ??
          "data";

  void deleteData(String route) => _preferences?.remove(route);

  void logout() {
    deleteLoginVerify();
    deleteNumber();
    deleteRefreshToken();
    deleteAccessToken();
    deleteOnBoardingDisable();
    deleteLang();
    deleteUserName();
  }
}
