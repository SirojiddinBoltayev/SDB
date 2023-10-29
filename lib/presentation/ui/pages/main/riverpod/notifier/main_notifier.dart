

import 'package:SDB/presentation/ui/pages/catalog/catalog_main.dart';
import 'package:SDB/presentation/ui/pages/home/home.dart';
import 'package:SDB/presentation/ui/pages/main/riverpod/state/main_state.dart';
import 'package:SDB/presentation/ui/pages/order/order_page.dart';
import 'package:SDB/presentation/ui/pages/profile/profile_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';

import '../../../../../../domain/service/constants/assets.dart';
import '../../../../../../domain/service/utils/nav_item_enum.dart';

class MainNotifier extends StateNotifier<MainState>{
  MainNotifier() : super(const MainState());


  List<IndexedStackChild> list = [
    IndexedStackChild(child: const HomePage(), preload: false),
    IndexedStackChild(child: const CatalogPage(), preload: false),
    IndexedStackChild(child: const OrderPage(), preload: false),
    IndexedStackChild(child: const ProfilePage(), preload: false),
  ];
  List<NavItemEnum> navItem = [
    NavItemEnum.home,
    NavItemEnum.catalog,
    NavItemEnum.order,
    NavItemEnum.profile,
  ];
  List<String> labels = [
    "navbar.home".tr(),
    "navbar.catalog".tr(),
    "navbar.shopping_cart".tr(),
    "navbar.profile".tr(),

  ];

  List<GlobalKey<NavigatorState>> listKey =[
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<String> icons =[
    Assets.homeSvg,
    Assets.catalogSvg,
    Assets.orderSvg,
    Assets.profileSvg,
  ];






  void incrementPageIndex(item){
    state = state.copyWith(indexPage: item);
  }

}

