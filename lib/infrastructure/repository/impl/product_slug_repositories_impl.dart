import 'package:SDB/domain/handlers/api_result.dart';
import 'package:SDB/domain/model/all_product_response.dart';
import 'package:flutter/cupertino.dart';
import '../../../domain/di/injection.dart';
import '../../../domain/handlers/http_service.dart';
import '../../../domain/handlers/network_exception.dart';
import '../../../domain/model/product_response.dart';
import '../category_slug.dart';
import '../product_slug_repositories.dart';

class ProductSlugRepositoryImpl extends ProductSlugRepository{
  @override

  Future<ApiResult<ProductResponse>> getProduct(
      {required String slug, }) async{
    // final data  = <String, String>{"phone" : phone};
    try {
      final client = inject<HttpService>().client(requireAuth: false);
      final response = await client.get(
        '/dev/v1/product/$slug}',
      );
      return ApiResult.success(
        data: ProductResponse.fromJson(response.data),
      );

    } catch (e) {
      debugPrint('==> failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}