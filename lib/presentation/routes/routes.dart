
import 'package:SDB/presentation/ui/pages/splash/splash.dart';
import 'package:auto_route/auto_route.dart' ;
import 'package:flutter/cupertino.dart';

import '../ui/pages/auth/login/login_main.dart';
import '../ui/pages/catalog/catalog_main.dart';
import '../ui/pages/filter/filter.dart';
import '../ui/pages/home/home.dart';
import '../ui/pages/main/main_page.dart';
import '../ui/pages/onboarding/onboarding_main.dart';
import '../ui/pages/order/order_page.dart';
import '../ui/pages/profile/profile_page.dart';
import '../ui/pages/search/search_page.dart';
import '../ui/pages/settings/settings_page.dart';
import '../ui/pages/product_for_slug/product_for_slug.dart';



part 'routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter{


  @override
  List<AutoRoute> get routes => [
    CupertinoRoute( page: SplashRoute.page,initial: true,path: "/"),
    CupertinoRoute( page: OnBoardingRoute.page,path: "/on_boarding"),
    CupertinoRoute( page: LoginRoute.page,path: "/login"),
    CupertinoRoute( page: CatalogRoute.page,path: "/catalog"),
    CupertinoRoute( page: FilterRoute.page,path: "/filter"),
    CupertinoRoute( page: OrderRoute.page,path: "/order"),
    CupertinoRoute( page: ProfileRoute.page,path: "/profile"),
    CupertinoRoute( page: SearchRoute.page,path: "/search"),
    CupertinoRoute( page: SettingsRoute.page,path: "/settings"),
    CupertinoRoute( page: ProductListVerticalRoute.page,path: "/productsList"),
    CupertinoRoute( page: HomeRoute.page,path: "/home"),
    CupertinoRoute( page: MainRoute.page,path: "/main"),

  ];
}