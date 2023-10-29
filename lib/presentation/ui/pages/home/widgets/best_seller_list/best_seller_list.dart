import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/riverpod/provider/best_seller_list_provider.dart';
import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../domain/service/constants/assets.dart';
import '../../../../../../domain/service/utils/sort_price.dart';
import '../../../widgets/product_cart.dart';
import '../../../widgets/shimmer_effects.dart';

class ProductListHorizontal extends ConsumerStatefulWidget {
  final dynamic state;
  final dynamic notifier;
  final String? slug;

  const ProductListHorizontal({super.key, required this.state, this.notifier,this.slug});

  @override
  ConsumerState<ProductListHorizontal> createState() =>
      _ProductListHorizontalConsumerState();
}

class _ProductListHorizontalConsumerState
    extends ConsumerState<ProductListHorizontal> {

  late RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => ref.read(widget.notifier).getList(page: 1,isRefresh: true,));
    _refreshController = RefreshController();

  }
  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(widget.notifier);
    final state = ref.watch(widget.state);
    // final state = ref.watch(bestSellerProvider);
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 213.h,
        // width: 75.w,
        // color: AppColors.primaryColor,
        child:

        state.isLoading
            ? Container()
            : state.products.isNotEmpty
                    ? SmartRefresher(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          controller: _refreshController,
          enablePullDown: false,
          enablePullUp: true,
          onLoading: () =>
              notifier.getList(
                refreshController: _refreshController,
                // slug: widget.slug.toString(),
                // page: page++,
              ),

                  // slug: widget.slug.toString()),
          child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.products.length,
                          itemBuilder: (BuildContext context, int index) =>
                             // Text("Hello"),
                             //
                              ProductCart(index: index, state: state),
                        ),
                      ) : Container()
      )

    );
  }
}
