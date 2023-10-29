import 'package:SDB/presentation/routes/routes.dart';
import 'package:auto_route/auto_route.dart';

enum NavItemEnum{
  home("/home"),
  catalog("/catalog"),
  order("/order"),
  profile("/profile");

   const NavItemEnum(this.name);
   final String name;
}