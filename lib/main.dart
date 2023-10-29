import 'package:SDB/domain/service/utils/lang_list.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:SDB/presentation/ui/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'domain/service/dependecy_manager.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
await LocalStorage.getInstance();
  await EasyLocalization.ensureInitialized();
  setUpDependencies();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: Lang.supportedLocales,
        path: 'assets/lang', // <-- change the path of the translation files
        fallbackLocale:  Locale.fromSubtags(countryCode: LocalStorage.instance.getLang() ?? "uz"),

        // Locale(LocalStorage.instance.getLang()),
        child: App(),
      ),
    ),
  );
}
