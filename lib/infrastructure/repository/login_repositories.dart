

import 'package:SDB/domain/model/verify_response.dart';

import '../../domain/handlers/api_result.dart';
import '../../domain/model/login_response.dart';

abstract class LoginRepository{
  Future<ApiResult<LoginResponse>> login({
    required String phone,
  });

  Future<ApiResult<VerifyResponse>> verify({
    required String phone,
    required String code,
  });
  // Future<ApiResult<void>> updateFirebaseToken(String? token);

}