// import 'package:SDB/presentation/ui/pages/catalog/catalog_main.dart';
// import 'package:SDB/presentation/ui/pages/home/home.dart';
// import 'package:SDB/presentation/ui/pages/order/order_page.dart';
// import 'package:SDB/presentation/ui/pages/profile/profile_page.dart';
// import 'package:flutter/cupertino.dart';
//
// import '../../../../../domain/service/utils/nav_item_enum.dart';
//
//
// class TabNavigatorRoutes {
//   static const String root = '/main';
// }
//
// class TabNavigator extends StatefulWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final NavItemEnum tabItem;
//   final bool? isPressed;
//
//
//   const TabNavigator({required this.tabItem, required this.navigatorKey,required this.isPressed, Key? key}) : super(key: key);
//
//   @override
//   State<TabNavigator> createState() => _TabNavigatorState();
// }
//
//
//
// class _TabNavigatorState extends State<TabNavigator> with AutomaticKeepAliveClientMixin {
//
//   Map<String, WidgetBuilder> _routeBuilders({required BuildContext context, required RouteSettings routeSettings}) {
//     switch (widget.tabItem) {
//       case NavItemEnum.home:
//         return {
//           TabNavigatorRoutes.root: (context) => const HomePage(),
//         };
//       case NavItemEnum.catalog:
//         return {
//           TabNavigatorRoutes.root: (context) => const CatalogPage(),
//         };
//       case NavItemEnum.order:
//         return {
//           TabNavigatorRoutes.root: (context) => const OrderPage(),
//         };
//       case NavItemEnum.profile:
//         return {
//           TabNavigatorRoutes.root: (context) => const ProfilePage(),
//         };
//
//
//       default:
//         return {
//           TabNavigatorRoutes.root: (context) => Container(),
//         };
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Navigator(
//       key: widget.navigatorKey,
//       initialRoute: TabNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         final routeBuilders = _routeBuilders(context: context, routeSettings: routeSettings);
//         return CupertinoPageRoute(
//           builder: (context) =>
//           routeBuilders.containsKey(routeSettings.name) ? routeBuilders[routeSettings.name]!(context) : Container(),
//         );
//       },
//     );
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }