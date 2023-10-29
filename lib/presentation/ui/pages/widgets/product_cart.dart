import 'dart:ui';

import 'package:SDB/presentation/ui/pages/product_for_slug/riverpod/provider/product_list_slug_notifier_provider.dart';
import 'package:SDB/presentation/ui/pages/widgets/images_indicator.dart';
import 'package:SDB/presentation/ui/pages/widgets/indicator_animation.dart';
import 'package:SDB/presentation/ui/pages/widgets/shimmer_effects.dart';
import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/service/constants/assets.dart';
import '../../../../domain/service/constants/color.dart';
import '../../../../domain/service/utils/sort_price.dart';

class ProductCart extends ConsumerStatefulWidget {

  final double? size;
  final bool? isGrid;
  final int index;

  // final PageController controller;
  final dynamic state;

  const ProductCart({
    super.key,
    required this.index,
    this.isGrid,
    required this.state,
    this.size,
    // required this.controller,
  });

  @override
  ConsumerState<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends ConsumerState<ProductCart> {

  int imageChange  = 0;

  @override
  Widget build(BuildContext context) {
    // final notifier = ref.read(orderProvider.notifier);
    // final state = ref.watch(categoryProvider);
    // state.products[index].products!.map((e) => e.nameUz).first.toString()
    // final data = state.products[index];
    return Container(
      padding: const EdgeInsets.all(10),
      width: 135.w,
      height: widget.size ?? 300.w,
      child: Stack(
        children: [
          Container(
            // width: 135.w,
            // height: 200.h,

            // width:  0.7.sw,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.3),
                  blurRadius: 3,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                // Navigator.of(context)
                //     .push(CupertinoPageRoute(
                //   builder: (BuildContext context) =>
                //       // DetailsPage(
                //       //   slug: snapshot
                //       //       .data?.products![index]!.slug ??
                //       //       "",
                //       // ),
                // ));
              },
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: widget.state.products[widget.index].products!
                                  .map((e) => e.images!.isNotEmpty)
                                  .first ||
                              widget.state.products[widget.index].products!
                                      .map((e) => e.images!.first)
                                      .first
                                      .toString() !=
                                  ""
                          ? Stack(
                              children: [
                                AnimatedSizeAndFade(
                                  child: PageView.builder(

                                      physics: const BouncingScrollPhysics(),
                                      onPageChanged: (value){
                                        setState(() {
                                          imageChange = value;
                                        });
                                      },
                                      itemCount: widget.state.products[widget.index].products!
                                          .map((e) => e.images!.length)
                                          .first,
                                      itemBuilder:
                                          (BuildContext context, int item) {
                                        return widget.state.products[widget.index].products!
                                                .map((e) =>
                                                    e.images!.contains(".avif"))
                                                .first
                                            ? AvifImage.network(
                                          widget.state.products[widget.index].products!
                                                    .map((e) => e.images![item])
                                                    .first
                                                    .toString(),
                                                width: 65,
                                                fit: BoxFit.contain,
                                              )
                                            : FadeInImage.assetNetwork(
                                                placeholder:
                                                    Assets.logoImagePng,
                                                image: widget.state
                                                    .products[widget.index].products!
                                                    .map((e) => e.images![item])
                                                    .first
                                                    .toString(),
                                              );
                                      }),
                                ),
                                ImagesIndicator(index: imageChange,length: (widget.state.products[widget.index].products!
                                    .map((e) => e.images!.length)
                                    .map((e) => e)).last,),
                              ],
                            )
                          : ShimmerEffects(
                              child: Container(
                                height: 0.32.sh,
                                width: 0.3.sw,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                margin: const EdgeInsets.only(bottom: 10),
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
                    child: Text(
                      widget.state.products[widget.index].products!
                          .map((e) => e.nameUz)
                          .first
                          .toString(),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "  ${sortPrice(widget.state.products[widget.index].products!.map((e) => e.price).first as num).replaceAll(",", ' ')}",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "details_page.money".tr(),
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(55),
                    onTap: () {
                      // showModalBottomSheet(
                      //     backgroundColor:
                      //     Colors.transparent,
                      //     context: context,
                      //     builder: (BuildContext
                      //     context) =>
                      // ModalBottomSheet(
                      //   slug: snapshot
                      //       .data!
                      //       .products![
                      //   index]
                      //       .slug ??
                      //       "",
                      //   image: snapshot
                      //       .data!
                      //       .products![
                      //   index]
                      //       .images!
                      //       .first ??
                      //       "",
                      //   price: snapshot
                      //       .data!
                      //       .products![
                      //   index]
                      //       .price
                      //       .toString() ??
                      //       "",
                      //   name: snapshot
                      //       .data!
                      //       .products![index]
                      //       .nameUz,
                      // ));
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                            color: AppColors.primaryOpacity,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            "home_page.buy".tr(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          //New belgili container
          widget.state.products[widget.index].products!.map((e) => e.isNew).first != null &&
              widget.state.products[widget.index].products!.map((e) => e.isNew).first == 1
              ? Container(
                  margin: const EdgeInsets.only(left: 2, top: 2),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(9)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 9, right: 9, top: 2, bottom: 2),
                    child: Text(
                      "new".tr(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xffFF15A2)),
                    ),
                  ),
                )
              : Container(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                  height: 25.w,
                  width: 25.w,
                  margin: EdgeInsets.only(right: 10.spMin, top: 5.sp),
                  // padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25)),
                  child:
                      // FutureBuilder<bool>(
                      //     future: favoriteRepository.isFavorite(
                      //         snapshot
                      //             .data!.products![index].slug!),
                      //     builder: (context, isFavoriteSnapshot) {
                      //       if (isFavoriteSnapshot.hasError) {
                      //         return Container();
                      //       }
                      //       return
                      InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      // favoriteRepository.addProduct(
                      //     snapshot
                      //         .data!
                      //         .products![index]
                      //         .slug ??
                      //         "",
                      //     snapshot
                      //         .data!
                      //         .products![index]
                      //         .nameUz ??
                      //         "",
                      // snapshot
                      //         .data!
                      //         .products![index]
                      //         .images!.first,
                      // sortPrice(snapshot
                      //     .data!
                      //     .products![index]
                      //     .price as num).replaceAll(",", " "),
                      // context);

                      // favoriteRepository.deleteFavorite(
                      //   snapshot
                      //       .data!
                      //       .products![index]
                      //       .slug ??
                      //       "",);
                    },
                    child:
                        // isFavoriteSnapshot.data ??
                        //     false
                        //     ? const Icon(
                        //   Icons.favorite,
                        //   size: 18,
                        //   color: Color(0xffFAD652),
                        // )
                        //     :
                        const Icon(
                      Icons.favorite_border,
                      size: 18,
                      color: AppColors.primaryOpacity,
                    ),
                    // );
                    // }),
                    // ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

