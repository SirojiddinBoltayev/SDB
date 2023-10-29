import 'package:SDB/presentation/ui/pages/product_for_slug/riverpod/provider/product_list_slug_notifier_provider.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../main/widgets/cusom_appBar.dart';
import '../widgets/product_cart.dart';

@RoutePage()
class ProductListVerticalPage extends ConsumerStatefulWidget {
  final String? slug;

  const ProductListVerticalPage({super.key, this.slug});

  @override
  ConsumerState<ProductListVerticalPage> createState() =>
      _ProductListVerticalConsumerState();
}

class _ProductListVerticalConsumerState
    extends ConsumerState<ProductListVerticalPage>
     {
  late RefreshController _refreshController;
  int page = 1;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(categoryProvider(0).notifier).getList(
        slug: widget.slug.toString(),
        isRefresh: true
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(categoryProvider(0).notifier);
    final state = ref.watch(categoryProvider(0));
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
          CustomAppBar(
          scaffoldKey: scaffoldKey,
        ),
        Padding(
          padding: EdgeInsets.only(top: 75.0.h),
          child: SmartRefresher(
            physics: const BouncingScrollPhysics(),
            controller: _refreshController,
            enablePullDown: true,
            enablePullUp: true,
            onLoading: () =>
                notifier.getList(
                  refreshController: _refreshController,
                  slug: widget.slug.toString(),
                  // page: page++,
                ),
            onRefresh: () =>
                notifier.getList(
                    refreshController: _refreshController,
                    // isRefresh: true,
                    slug: widget.slug.toString()),
            child: state.isLoading
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : state.products.isNotEmpty
                ? GridView.builder(
                itemCount: state.products.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
childAspectRatio: 0.7,
                // mainAxisExtent: 240
                ),
                itemBuilder: (BuildContext context, int index) {
                  // state.products
                  return

                    ProductCart(index: index, state: state,isGrid: true,);
                })
                    : const Center(
            child: Text("No orders"),
          ),
      ),)
      ],
    ),)
    ,
    );
  }


}
