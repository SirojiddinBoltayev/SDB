

import 'package:SDB/domain/handlers/api_result.dart';
import 'package:SDB/domain/model/login_response.dart';
import 'package:SDB/domain/model/verify_response.dart';
import 'package:SDB/infrastructure/repository/login_repositories.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';

class LoginRepositoryImpl extends LoginRepository{
  @override
  Future<ApiResult<LoginResponse>> login({required String phone}) async{

    final data  = <String, String>{"phone" : phone};

    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
        '/dev/v1/auth/login',
        data: data
      );
      return ApiResult.success(

        data: LoginResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> login failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }





  }

  Future<ApiResult<VerifyResponse>> verify({required String phone, required String code})async{
    final data  = <String, String>{"phone" : phone,"code" : code};

    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.post(
          '/dev/v1/auth/verify',
          data: data
      );
      return ApiResult.success(

        data: VerifyResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> login failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }


  }

  // @override
  // Future<ApiResult<void>> updateFirebaseToken(String? token) async {
  //   final data = {if (token != null) 'firebase_token': token};
  //   try {
  //     final client = inject<HttpService>().client(requireAuth: true);
  //     await client.post(
  //       '/dev/v1/dashboard/user/profile/firebase/token/update',
  //       data: data,
  //     );
  //     return const ApiResult.success(data: null);
  //   } catch (e) {
  //     debugPrint('==> update firebase token failure: $e');
  //     return ApiResult.failure(
  //       error: NetworkExceptions.getDioException(e),
  //     );
  //   }
  // }

}