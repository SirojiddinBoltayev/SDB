import 'package:SDB/domain/handlers/api_result.dart';
import 'package:SDB/domain/model/all_product_response.dart';
import 'package:flutter/cupertino.dart';
import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';
import '../category_slug.dart';

class CategorySlugRepositoryImpl extends CategorySlugRepository{
  @override

  Future<ApiResult<AllProductResponse>> getCategory(
      {required String slug, int page = 1 }) async{
    // final data  = <String, String>{"phone" : phone};
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.get(
        '/dev/v1/category/$slug/?page=${page.toString()}',
      );
      return ApiResult.success(
        data: AllProductResponse.fromJson(response.data),
      );

    } catch (e) {
      debugPrint('==> failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}