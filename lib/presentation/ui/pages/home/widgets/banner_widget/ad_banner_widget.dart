import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/banner_widget/riverpod/banner_widget_provider.dart';
import 'package:SDB/presentation/ui/pages/widgets/indicator_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BannerWidget extends ConsumerStatefulWidget {
  final Widget? child;
  final Color? activeColor;
  final Color? unActiveColor;

  const BannerWidget(
      {super.key, this.child, this.activeColor, this.unActiveColor});

  @override
  ConsumerState<BannerWidget> createState() => _BannerWidgetConsumerState();
}

class _BannerWidgetConsumerState extends ConsumerState<BannerWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(bannerWidgetProvider.notifier);
      notifier.getBanner();
      notifier
          .autoScrollBanner(duration: const Duration(seconds: 8));
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(bannerWidgetProvider.notifier);
    final state = ref.watch(bannerWidgetProvider);
    return SliverList(
        delegate: SliverChildListDelegate([
      12.verticalSpace,
      SizedBox(
        height: 160.h,
        child: !state.isLoading
            ? state.isResponseError
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 150.h,
                        child: PageView.builder(
                          itemCount: 5,
                          controller: PageController(),
                          onPageChanged: (positionPage) {
                            notifier.incrementPageIndex(positionPage);
                          },
                          // pageSnapping: false,
                          allowImplicitScrolling: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Material(
                              child: Shimmer.fromColors(
                                enabled: true,
                                baseColor: AppColors.grey.withOpacity(0.3),
                                highlightColor:
                                    AppColors.white.withOpacity(0.4),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text("Nimadir xato ketdi"),
                                    ),
                                  ),
                                ),
                              ),
                            );
                            // width: 200.w,
                          },
                        ),
                      ),
                      SizedBox(
                        // width: 500,
                        height: 8.h,
                        child: Shimmer.fromColors(
                          enabled: true,
                          baseColor: AppColors.grey.withOpacity(0.3),
                          highlightColor: AppColors.white.withOpacity(0.4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => Indicator(
                                activeColor: widget.activeColor ??
                                    AppColors.primaryColor,
                                unActiveColor: widget.unActiveColor ??
                                    AppColors.primaryOpacity,
                                isActive: state.pageIndex == index,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150.h,
                        child: PageView.builder(
                          itemCount: state.banners[0].events?.length,
                          controller: notifier.pageController,
                          onPageChanged: (positionPage) {
                            notifier.incrementPageIndex(positionPage);
                          },
                          // pageSnapping: false,
                          allowImplicitScrolling: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                // alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                    bottom: 8, right: 8, left: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: AppColors.primaryColor,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: FadeInImage(
                                    fit: BoxFit.fill,
                                    placeholder:
                                        const AssetImage(Assets.logoImagePng),
                                    image: NetworkImage(
                                        "${state.banners[0].events?[index].image}"),
                                  ),
                                )
                                // width: 200.w,
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        // width: 500,
                        height: 8.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              state.banners[0].events?.length ?? 0,
                              (index) => InkWell(
                                    onTap: () {
                                      notifier.incrementPageIndex(index);
                                      notifier.pageController.jumpToPage(index);
                                    },
                                    child: Indicator(
                                      activeColor: widget.activeColor ??
                                          AppColors.primaryColor,
                                      unActiveColor: widget.unActiveColor ??
                                          AppColors.primaryOpacity,
                                      isActive: state.pageIndex == index,
                                    ),
                                  )),
                        ),
                      )
                    ],
                  )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 150.h,
                    child: PageView.builder(
                      itemCount: 5,
                      controller: PageController(),
                      onPageChanged: (positionPage) {
                        notifier.incrementPageIndex(positionPage);
                      },
                      // pageSnapping: false,
                      allowImplicitScrolling: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Material(
                          child: Shimmer.fromColors(
                            enabled: true,
                            baseColor: AppColors.grey.withOpacity(0.3),
                            highlightColor: AppColors.white.withOpacity(0.4),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 150.h,
                                decoration: BoxDecoration(
                                    color: AppColors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        );
                        // width: 200.w,
                      },
                    ),
                  ),
                  SizedBox(
                    // width: 500,
                    height: 8.h,
                    child: Shimmer.fromColors(
                      enabled: true,
                      baseColor: AppColors.grey.withOpacity(0.3),
                      highlightColor: AppColors.white.withOpacity(0.4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => Indicator(
                            activeColor:
                                widget.activeColor ?? AppColors.primaryColor,
                            unActiveColor: widget.unActiveColor ??
                                AppColors.primaryOpacity,
                            isActive: state.pageIndex == index,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
      ),
    ]));
  }
}
