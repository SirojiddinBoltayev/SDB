import 'package:SDB/domain/model/all_product_response.dart';
import 'package:SDB/domain/model/product_paginate_response.dart';
import 'package:SDB/domain/model/product_response.dart';

import '../../domain/handlers/api_result.dart';

abstract class ProductSlugRepository {
  Future<ApiResult<ProductResponse>> getProduct(
      {required String slug,});
}