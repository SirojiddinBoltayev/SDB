
import 'package:SDB/domain/service/constants/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleListWidget extends StatefulWidget {
  final String title;
  final String? slug;
  final Function()? onTap;

  const TitleListWidget({
    Key? key,
    this.slug,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  State<TitleListWidget> createState() => _TitleListWidgetState();
}

class _TitleListWidgetState extends State<TitleListWidget> {
  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left:  0.04.sw, top:  0.015.sh),
                child: Text(
                  (widget.title),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: widget.onTap,

                  //     () {
                  //   // widget.title == "home_page.category".tr()
                  //   //     ? navbarController.navbarChangeItem(1)
                  //   //     : Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=> ProductsSlugUI(
                  //   //   slug: widget.slug.toString(),
                  //   //   name: widget.title.toString(),
                  //   // )));
                  // },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "home_page.all".tr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       8.horizontalSpace,
                        Image.asset(Assets.rightPng),
                      ],
                    ),
                  ),
                ),
              ),
             10.horizontalSpace
            ],
          ),
        ],
      ),
    );
  }
}