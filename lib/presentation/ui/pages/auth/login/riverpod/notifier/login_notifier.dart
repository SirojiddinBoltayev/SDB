
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:SDB/infrastructure/repository/login_repositories.dart';
import 'package:SDB/presentation/ui/pages/auth/login/riverpod/state/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../domain/handlers/network_exception.dart';
import '../../../../../../../domain/service/utils/app_connective.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginRepository _loginRepository;

  LoginNotifier(this._loginRepository) : super(const LoginState());

  void setNumber(String text) {
    state = state.copyWith(
        number: text, isLoginError: false, isLoading: true);
  }

  Future<void> login({
    VoidCallback? checkYourNetwork,
    VoidCallback? unAuthorised,
    VoidCallback? goToMain,
  }) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      final response = await _loginRepository.login(
        phone: state.number,
      );
      response.when(
        success: (data) async {
          await LocalStorage.instance.setNumber(state.number);
          state = state.copyWith(isLogin: true,isLoading: false);


        },
        failure: (failure) {
          state = state.copyWith(isLoading: false, isLoginError: true);
          if (failure == const NetworkExceptions.unauthorisedRequest()) {
            unAuthorised?.call();
          }
          debugPrint('==> login failure: $failure');
        },
      );
    } else {

      checkYourNetwork?.call();
    }
  }

  void setNumberAndCode(String phone, String code) {
    state = state.copyWith(
        number: phone,code: code, isLoginError: false,isLoading: true);
  }

   Future<dynamic> route (context) async {
  return await context.router.pushNamed("/home");
  }

  Future<void> verify({
    VoidCallback? checkYourNetwork,
    VoidCallback? unAuthorised,
    VoidCallback? goToMain,
  }) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      state = state.copyWith(isLoading: true);

      final response = await _loginRepository.verify(
        phone: state.number,
        code: state.code,
      );
      response.when(
        success: (data) async {
          await LocalStorage.instance.setAccessToken(data.accessToken);
          await LocalStorage.instance.setRefreshToken(data.refreshToken);
          await LocalStorage.instance.setLoginVerify(data.isOk);

          state =  state.copyWith(isVerify: data.isOk ?? false ,isLoading: false);


        },
        failure: (failure) {
          state = state.copyWith(isLoading: false, isLoginError: true);
          if (failure == const NetworkExceptions.unauthorisedRequest()) {
            unAuthorised?.call();
          }
          debugPrint('==> login failure: $failure');
        },
      );
    } else {
      state = state.copyWith(isLoading: false, isLoginError: true,);

      checkYourNetwork?.call();
    }
  }


}
