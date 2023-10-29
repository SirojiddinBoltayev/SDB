import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:SDB/presentation/routes/routes.dart';
import 'package:SDB/presentation/ui/pages/widgets/loading_animation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../main/riverpod/provider/main_provider.dart';
@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashState();
}

class _SplashState extends ConsumerState<SplashPage>{
  final router = AppRouter();

  @override
  void initState() {
    super.initState();
    initialization();


  }
  navigator() async {
    // context.router.popUntilRouteWithName(OnBoardingRoute.name);

    await context.router.pushAndPopUntil( !LocalStorage.instance.getOnBoardingDisable() ? const OnBoardingRoute() : const MainRoute(),
      predicate: (route) =>  !LocalStorage.instance.getOnBoardingDisable() ? route.settings.name == '/on_boarding' : route.settings.name == '/main',);

  }
  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    await navigator();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          const Spacer(
            flex: 6,
          ),
          SvgPicture.asset(
            Assets.logoImageSvg,
            height: 100.h,
            color: AppColors.primaryColor,
          ),
          50.verticalSpace,
          CustomLoadingAnimation(),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
