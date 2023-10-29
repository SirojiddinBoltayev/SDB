import 'package:SDB/domain/handlers/api_result.dart';

import 'package:SDB/domain/model/banner_response.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';
import '../banner_repositories.dart';

class BannerRepositoryImpl extends BannerRepository{
  @override

  Future<ApiResult<BannerResponse>> getBanner() async{


    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.get(
          '/dev/v1/events/list',
      );
      return ApiResult.success(

        data: BannerResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }

  }

}