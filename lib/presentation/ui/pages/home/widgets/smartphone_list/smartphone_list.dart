import 'package:SDB/presentation/ui/pages/home/widgets/smartphone_list/provider/smartphone_list_provider.dart';
import 'package:SDB/presentation/ui/pages/widgets/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class SmartphoneListWidget extends ConsumerStatefulWidget {
  const SmartphoneListWidget({super.key});

  @override
  ConsumerState<SmartphoneListWidget> createState() =>
      _SmartphoneListWidgetConsumerState();
}

class _SmartphoneListWidgetConsumerState
    extends ConsumerState<SmartphoneListWidget> {

  late RefreshController _refreshController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(smartphoneListProvider.notifier).getList(page: 1,isRefresh: true);
    });
    _refreshController = RefreshController();

  }
  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(smartphoneListProvider.notifier);
    final state = ref.watch(smartphoneListProvider);
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 213.h,
        // width: 75.w,
        // color: AppColors.primaryColor,
        child: state.isLoading
            ? Container()
            :  state.products.isNotEmpty
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
          onRefresh: () =>
              notifier.getList(
                refreshController: _refreshController,),
          // isRefresh: true,
          // slug: widget.slug.toString()),
          child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.products.length,
                      itemBuilder: (BuildContext context, int index) =>

          // Container(child: Text("Salom"),)

                          ProductCart(index: index, state: state),

                    ),
                )
                : Container(),
      ),
    );
  }
}
