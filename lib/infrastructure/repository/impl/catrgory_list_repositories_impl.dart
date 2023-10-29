import 'package:SDB/domain/handlers/api_result.dart';
import 'package:SDB/domain/model/all_product_response.dart';
import 'package:SDB/domain/model/category_response.dart';
import 'package:flutter/cupertino.dart';
import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';
import '../../../domain/model/product_paginate_response.dart';
import '../category_list_repositories.dart';

class CategoryRepositoryImpl extends CategoryRepository{
  @override

  Future<ApiResult<CategoryResponse>> getCategory({required String slug}) async{
    // final data  = <String, String>{"phone" : phone};
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.get(
        '/dev/v1/category/$slug',
      );
      return ApiResult.success(
        data: CategoryResponse.fromJson(response.data),
      );

    } catch (e) {
      debugPrint('==>  failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
