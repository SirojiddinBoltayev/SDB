import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../domain/service/constants/color.dart';
import '../riverpod/provider/main_provider.dart';

class CustomNavBar extends ConsumerWidget {


    CustomNavBar({super.key, });
   // List<String> labels = [
   //   "navbar.home".tr(),
   //   "navbar.catalog".tr(),
   //   "navbar.shopping_cart".tr(),
   //   "navbar.profile".tr(),
   //
   // ];
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final notifier = ref.read(mainProvider.notifier);
    final state = ref.watch(mainProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: AppColors.navBarBackground,
          width: double.infinity,
          height: 50.h,
          child: Row(
            children: List.generate(
              notifier.navItem.length,
              (index) => Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      color: AppColors.navBarBackground,
                      child: Ink(
                        height: 25.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            color: state.indexPage == index
                                ? AppColors.primaryColor
                                : AppColors.navBarBackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: SvgPicture.asset(
                              notifier.icons[index],
                              color: state.indexPage != index
                                  ? AppColors.primaryColor
                                  : AppColors.white,
                            ),
                          ),
                          onTap: () {
                            if(index != (state.navItem.length -1) || LocalStorage.instance.getNumber() != "your number" ) {
                              notifier.incrementPageIndex(index);
                            }else{
                              context.router.pushNamed("/login");
                            }
                          },
                        ),
                      ),
                    ),
                    AnimatedCrossFade(
                      sizeCurve: Curves.easeIn,
                      duration: const Duration(milliseconds: 150),
                      firstChild: Text(
                        notifier.labels[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor),
                      ),
                      secondChild: const SizedBox(),
                      crossFadeState: state.indexPage == index
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
