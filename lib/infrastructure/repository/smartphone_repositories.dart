import 'package:SDB/domain/model/all_product_response.dart';

import '../../domain/handlers/api_result.dart';

abstract class SmartphoneRepository{
  Future<ApiResult<AllProductResponse>> getList(int page);
  Future<ApiResult<AllProductResponse>> fetchSmartphoneList(int page);
}