import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:SDB/presentation/routes/routes.dart';
import 'package:SDB/presentation/ui/pages/onboarding/riverpod/provider/on_boarding_provider.dart';
import 'package:SDB/presentation/ui/pages/widgets/styles/button_text_style.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/indicator_animation.dart';

@RoutePage()
class OnBoardingPage extends ConsumerStatefulWidget {
  const OnBoardingPage({super.key});

  @override
  ConsumerState<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    List<String> onBoardingPageDataList = [
      Assets.selfieBoySvg,
      Assets.walletSvg,
      Assets.rocketSvg,
    ];
    List<String> onBoardingPageTitleList = [
      "onboarding_page.page_1".tr(),
      "onboarding_page.page_2".tr(),
      "onboarding_page.page_3".tr(),
    ];
    final onBoardingCounterItem = ref.watch(onBoardingProvider);
    final onBoardingCounterFunc = ref.read(onBoardingProvider.notifier);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (item) {
                onBoardingCounterFunc.increment(item);
              },
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          AppColors.primaryColor,
                          AppColors.primaryColor.withOpacity(
                            0.8,
                          ),
                        ],
                      )),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              onBoardingPageDataList[index],
                              height: 0.45.sh,
                            ),
                            SizedBox(
                                width: 0.6.sw,
                                child: Text(
                                  onBoardingPageTitleList[index],
                                  style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                InkWell(
                  onTap: () async {
                    _pageController.dispose();

                    if (context.mounted) {
                      context.router.pushAndPopUntil(const MainRoute(),
                          predicate: (router) =>
                              router.settings.name == "/main");
                      // navigator(context, const HomeRoute(),"/home");
                    }
                    await LocalStorage.instance.setOnBoardingDisable(true);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("onboarding_page.prev".tr(), style: customStyle()),
                      12.horizontalSpace,
                      SvgPicture.asset(
                        Assets.arrowRightSvg,
                        fit: BoxFit.cover,
                        width: 16.sp,
                      ),
                      22.horizontalSpace,
                    ],
                  ),
                ),
                const Spacer(
                  flex: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        3,
                        (index) => Indicator(
                              isActive:
                                  onBoardingCounterItem == index ? true : false,
                              // isLoading: true,
                            ))
                    // Indicator(isActive, isLoading)
                  ],
                ),
                20.verticalSpace,
                InkWell(
                  onTap: () async {
                    if (onBoardingCounterItem != 2) {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 350),
                          curve: Curves.easeIn);
                    } else {
                      _pageController.dispose();
                      await LocalStorage.instance.setOnBoardingDisable(true);
                      if (context.mounted) {
                        context.router.pushAndPopUntil(const LoginRoute(),
                            predicate: (router) =>
                                router.settings.name == "/login");
                      }
                    }
                  },
                  child: Container(
                    padding:  EdgeInsets.all(10.0.r),
                    margin: const EdgeInsets.only(
                        bottom: 65.0, left: 30, right: 30),
                    decoration: BoxDecoration(
                        color: AppColors.primaryOpacity,
                        borderRadius: BorderRadius.circular(25.r)),
                    width: double.infinity,
                    child: onBoardingCounterItem != 2
                        ? Text(
                            "onboarding_page.button".tr(),
                            style: const TextStyle(
                                color: AppColors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            "onboarding_page.button_final".tr(),
                            style: const TextStyle(
                                color: AppColors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
