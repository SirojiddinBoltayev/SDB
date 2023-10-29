import 'package:SDB/domain/model/all_product_response.dart';

import '../../domain/handlers/api_result.dart';
import '../../domain/model/category_response.dart';
import '../../domain/model/product_paginate_response.dart';

abstract class CategoryRepository {
  Future<ApiResult<CategoryResponse>> getCategory( {required String slug});
}

