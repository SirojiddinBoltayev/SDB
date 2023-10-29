import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/banner_widget/ad_banner_widget.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/best_seller_list.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/riverpod/provider/best_seller_list_provider.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/grid_category.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/list_title.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/recommended_widget/riverpod/provider/recommended_provider.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/smartphone_list/smartphone_list.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  ConsumerState<HomePage> createState() => _ConsumerHomePageState();
}

class _ConsumerHomePageState extends ConsumerState<HomePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: CustomScrollView(
      shrinkWrap: true,
      slivers: [
        const BannerWidget(),
        const CategoryGrid(),
        TitleListWidget(
          title: "home_page.smartphones".tr(),
          slug: "category/smartfonlar",
        ),
        const SmartphoneListWidget(),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Assets.adSmartphonePng,
                fit: BoxFit.contain,
              ),
            ),
          ]),
        ),
        TitleListWidget(
          title: "home_page.best_seller_product".tr(),
          slug: "product/list?type=recommended",
        ),

        ProductListHorizontal(notifier: recommendedProvider.notifier,state: recommendedProvider,),

        TitleListWidget(
          title: "home_page.last_prdoucts".tr(),
          slug: "product/list",
          onTap: (){
            // Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>ExampleApp()));
          },
        ),

         ProductListHorizontal(notifier: bestSellerProvider.notifier,state: bestSellerProvider,),

        // ProductListHorizontal(notifier: smartphoneListProvider.notifier,state: smartphoneListProvider,),



        // const TitleListWidget(
        //   title: "Infinty scroll",
        //   slug: "category/smartfonlar",
        // ),
        // InfinityScroll(),
      ],
    )

        // const  BannerWidget(),

        );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
