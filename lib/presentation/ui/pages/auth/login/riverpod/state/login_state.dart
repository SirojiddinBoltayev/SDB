import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default("") String errorText,
    @Default(false) bool isLogin,
    @Default(false) bool isVerify,
    @Default(false) bool isLoginError,
    @Default('') String number,
    @Default('') String code,
  }) = _LoginState;

  const LoginState._();
}