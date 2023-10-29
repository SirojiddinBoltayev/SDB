import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/presentation/ui/pages/catalog/riverpod/provider/catalog_provider.dart';
import 'package:SDB/presentation/ui/pages/widgets/loading_animation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routes/routes.dart';

@RoutePage()
class CatalogPage extends ConsumerStatefulWidget {
  const CatalogPage({super.key});

  @override
  ConsumerState<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends ConsumerState<CatalogPage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(catalogProvider.notifier).getCategory(slug: "list");
    });
  }

  @override
  Widget build(BuildContext context) {
    // final notifier = ref.read(catalogProvider.notifier);
    final state = ref.watch(catalogProvider);
    return Container(
      color: AppColors.white,
      child: state.isLoading
          ? Container(
              color: AppColors.white,
              child: const Center(
                child: CustomLoadingAnimation(),
              ))
          : state.category?.categories != null
              ? ListView.builder(
                  itemCount: state.category!.categories!.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.blueOpacity,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.primaryOpacity),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Theme(
                        data: ThemeData(
                            dividerColor: AppColors.transparent,
                            shadowColor: AppColors.transparent),
                        child: ExpansionTile(
                          title: InkWell(
                              onTap: () {
                                context.router.push(ProductListVerticalRoute(
                                    slug: state
                                        .category!.categories![index].slug
                                        .toString()));
                                if (kDebugMode) {
                                  print(state.category!.categories![index].slug
                                      .toString());
                                }
                              },
                              child: Text(state
                                  .category!.categories![index].nameUz
                                  .toString(),style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold))),
                          children: List.generate(
                            state.category!.categories![index].children!.length,
                            (value) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Theme(
                                data: ThemeData(
                                    dividerColor: AppColors.transparent),
                                child: ExpansionTile(
                                  title: InkWell(
                                    onTap: () {
                                      context.router.push(ProductListVerticalRoute(
                                          slug: state.category!.categories![index]
                                              .children![value].slug
                                              .toString()));
                                      if (kDebugMode) {
                                        print(state.category!.categories![index]
                                            .children![value].slug
                                            .toString());
                                      }
                                    },
                                    child: Text(state.category!.categories![index]
                                        .children![value].nameUz
                                        .toString(),style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w700),),
                                  ),
                                  children: List.generate(
                                    state.category!.categories![index]
                                        .children![value].children!.length,
                                    (item) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        onTap: () {
                                          context.router.push(ProductListVerticalRoute(
                                              slug: state
                                                  .category!
                                                  .categories![index]
                                                  .children![value]
                                                  .children![item]
                                                  .slug
                                                  .toString(),));
                                          if (kDebugMode) {
                                            print(state
                                                .category!
                                                .categories![index]
                                                .children![value]
                                                .children![item]
                                                .slug
                                                .toString(),);
                                          }
                                        },
                                        child: ListTile(
                                            title: Text(state
                                                .category!
                                                .categories![index]
                                                .children![value]
                                                .children![item]
                                                .nameUz
                                                .toString(),style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w600),)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  color: AppColors.white,
                  child: const Center(
                    child: Text("Muammo chiqdi"),
                  ),
                ),
    );

    // Center(child: Text(state.category?.categories?[0].nameUz ?? "Hello"),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
