import '../../domain/handlers/api_result.dart';
import '../../domain/model/banner_response.dart';

abstract class BannerRepository {
  Future<ApiResult<BannerResponse>> getBanner();
}