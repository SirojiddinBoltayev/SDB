import 'package:SDB/domain/handlers/http_service.dart';
import 'package:SDB/domain/model/all_product_response.dart';

import '../../domain/handlers/api_result.dart';

abstract class BestSellerListRepository{
  Future<ApiResult<AllProductResponse>> getList({required int page});
}