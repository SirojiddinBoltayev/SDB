import 'package:SDB/domain/service/constants/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../domain/service/constants/color.dart';
import '../../../../routes/routes.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listSlug = [
      "aksessuarlar",
      "smartfonlar",
      "noutbuklar",
      "televizorlar",
      "smart-soatlar",
    ];
    List<String> listPng = [
      Assets.airPodsPng,
      Assets.iPhone14ProPng,
      Assets.laptopPng,
      Assets.tvPng,
      Assets.smartWatchPng,
    ];
    List kategoriyaData = [
      "home_page.accsesuar".tr(),
      "home_page.smartphones".tr(),
      "home_page.laptop".tr(),
      "home_page.tv".tr(),
      "home_page.smart_watch".tr(),
    ];
    // final size = MediaQuery.of(context).size;
    return SliverPadding(
      padding:  EdgeInsets.symmetric(horizontal: 0.04.sw,vertical: 8.h),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
            childCount: kategoriyaData.length,
            (BuildContext context, int index) => Container(
                  decoration: BoxDecoration(
                    // color: AppColors.blueOpacity,
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: AppColors.primaryOpacity.withOpacity(0.5), width: 1),
                  ),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      context.router
                          .push(ProductListVerticalRoute(slug: listSlug[index]));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              listPng[index],
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          kategoriyaData[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                )),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 30,
          childAspectRatio: 1.3,
        ),
      ),
    );
  }
}
