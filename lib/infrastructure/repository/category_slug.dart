import 'package:SDB/domain/model/all_product_response.dart';
import 'package:SDB/domain/model/product_paginate_response.dart';

import '../../domain/handlers/api_result.dart';

abstract class CategorySlugRepository {
Future<ApiResult<AllProductResponse>> getCategory(
    {required String slug, int page, });
}