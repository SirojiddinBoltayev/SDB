import 'package:SDB/presentation/ui/pages/home/home.dart';
import 'package:SDB/presentation/ui/pages/splash/splash.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/routes.dart';


class App extends StatelessWidget {
   App({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_,child) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale, // onGenerateRoute: ,
          // initialRoute: ,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
          // home:  child,
        );

      },
      // child: const Splash( )
    );
  }
}
