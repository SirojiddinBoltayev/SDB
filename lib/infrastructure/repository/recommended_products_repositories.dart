import 'package:SDB/domain/model/all_product_response.dart';

import '../../domain/handlers/api_result.dart';

abstract class RecommendedRepository {
  Future<ApiResult<AllProductResponse>> getCategory(
      { int page, });
}