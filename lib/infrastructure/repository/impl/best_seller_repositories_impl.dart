import 'package:SDB/domain/handlers/api_result.dart';
import 'package:SDB/domain/model/all_product_response.dart';

import 'package:SDB/infrastructure/repository/best_seller_repositories.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';

class BestSellerListRepositoryImpl extends BestSellerListRepository{
  @override

  Future<ApiResult<AllProductResponse>> getList({required int page}) async{

    // final data  = <String, String>{"phone" : phone};

    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.get(
        '/dev/v1/product/list?page=$page?type=new',
        // queryParameters: data
      );
      return ApiResult.success(

        data: AllProductResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==>  failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }





  }


}