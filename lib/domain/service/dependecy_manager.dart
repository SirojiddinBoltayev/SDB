import 'package:SDB/domain/handlers/http_service.dart';
import 'package:SDB/infrastructure/repository/banner_repositories.dart';
import 'package:SDB/infrastructure/repository/best_seller_repositories.dart';
import 'package:SDB/infrastructure/repository/category_slug.dart';
import 'package:SDB/infrastructure/repository/impl/banner_repositories_impl.dart';
import 'package:SDB/infrastructure/repository/impl/best_seller_repositories_impl.dart';
import 'package:SDB/infrastructure/repository/impl/login_repositories_impl.dart';
import 'package:SDB/infrastructure/repository/impl/recommended_products_repositories_impl.dart';
import 'package:SDB/infrastructure/repository/login_repositories.dart';
import 'package:SDB/infrastructure/repository/product_slug_repositories.dart';
import 'package:SDB/infrastructure/repository/recommended_products_repositories.dart';
import 'package:SDB/infrastructure/repository/smartphone_repositories.dart';
import 'package:get_it/get_it.dart';

import '../../infrastructure/repository/category_list_repositories.dart';
import '../../infrastructure/repository/impl/category_slug_impl.dart';
import '../../infrastructure/repository/impl/catrgory_list_repositories_impl.dart';
import '../../infrastructure/repository/impl/product_slug_repositories_impl.dart';
import '../../infrastructure/repository/impl/smartphone_repositories_impl.dart';

final GetIt getIt = GetIt.instance;

void setUpDependencies() {

  getIt.registerLazySingleton<HttpService>(() => HttpService());
  getIt.registerSingleton<LoginRepository>(LoginRepositoryImpl());
  getIt.registerSingleton<BannerRepository>(BannerRepositoryImpl());
  getIt.registerSingleton<CategorySlugRepository>(CategorySlugRepositoryImpl());
  getIt.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());
  getIt.registerSingleton<BestSellerListRepository>(BestSellerListRepositoryImpl());
  getIt.registerSingleton<SmartphoneRepository>(SmartphoneRepositoryImpl());
  getIt.registerSingleton<RecommendedRepository>(RecommendedRepositoryImpl());
  getIt.registerSingleton<ProductSlugRepository>(ProductSlugRepositoryImpl());

}


final loginRepository = getIt.get<LoginRepository>();
final bannerRepository = getIt.get<BannerRepository>();
final categorySlugRepository = getIt.get<CategorySlugRepository>();
final categoryRepository = getIt.get<CategoryRepository>();
final bestSellerRepository = getIt.get<BestSellerListRepository>();
final smartphoneRepository = getIt.get<SmartphoneRepository>();
final recommendedRepository = getIt.get<RecommendedRepository>();
final productSlugRepository = getIt.get<ProductSlugRepository>();

