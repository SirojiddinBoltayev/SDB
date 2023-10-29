import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/domain/service/utils/app_version.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_name_widget.dart';

class DrawerWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DrawerWidget({Key? key, required this.scaffoldKey, })
      : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    List<String> listDrawerTitles = [
      "profile_page.my_orders.title".tr(),
      "profile_page.favorite.title".tr(),
      "profile_page.setting.title".tr(),
      "drawer.about".tr(),
      "drawer.contact".tr(),
    ];
    List<String> listDrawerIcons = [
      Assets.boxSvg,
      Assets.heartSvg,
      Assets.settingSvg,
      Assets.bookSvg,
      Assets.viberSvg,

    ];
    final size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 0,
shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.primaryColor,

          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    color: Colors.white,
                  ),
                ],
              ),
              SafeArea(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              widget.scaffoldKey.currentState?.closeDrawer();

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 9.0,
                              ),
                              child: SvgPicture.asset(
                                Assets.logoImageSvg,
                                color: AppColors.primaryColor,
                                fit: BoxFit.cover,
                                height: size.height * 0.055,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            child: InkWell(
                              onTap: () {
                                widget.scaffoldKey.currentState?.closeDrawer();
                              },
                              child: const Icon(
                                Icons.cancel_outlined,
                                size: 28,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.of(context)
                          //     .push(CupertinoPageRoute(builder: (BuildContext context)=> ProfilePage(isDrawer: true)));
                          widget.scaffoldKey.currentState?.closeDrawer();
                        },
                        child:    Row(
                          children: [
                             const Spacer(),
                         SvgPicture.asset( Assets.profileCircleSvg,color: AppColors.primaryColor,),
                             15.horizontalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Row(
                                   children: [
                                     Text( LocalStorage.instance.getUserName(),style: TextStyle(fontSize: 16.sp),),
                                     8.horizontalSpace,
                                       InkWell(child: Icon(Icons.edit,size: 14.sp,color: AppColors.grey,),onTap: (){
                                         showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                                           content: EditNameDialog(),
                                         ));
                                       },),

                                   ],
                                 ),
                                5.verticalSpace,
                                Text(LocalStorage.instance.getNumber(),style: TextStyle(fontSize: 12.sp),),


                              ],
                            ),

                             const Spacer(
                              flex: 8,
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(
                          listDrawerTitles.length,
                              (index) => ListTile(
                            selectedTileColor: Colors.grey,
                            onTap: () {
                              // Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=> listDrawerItemWidgets[index]));
                              widget.scaffoldKey.currentState
                                  ?.closeDrawer();
// Provider.of<HomeBannerCarouselProvider>(context).countPressed++;
                            },
                            leading: SvgPicture.asset(listDrawerIcons[index],color: AppColors.primaryColor,),
                            title: Text(listDrawerTitles[index]),
                          )),
                      const Spacer(
                        flex: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "drawer.version".tr(),
                            style:  const TextStyle(color: AppColors.grey),
                          ),
                           8.horizontalSpace,
                           Text(
                            SDB.stable.version,
                            style:  const TextStyle(color: AppColors.grey),
                          ),
                        ],
                      ),
                     6.verticalSpace,
                      const Text(
                        "Appx Team inc",
                        style: TextStyle(color: AppColors.grey),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(
                    child: Container(
                      width: 1,
                      height: size.height,
                      color: Colors.black.withOpacity(0.15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  navigator({required PageRouteInfo route, required String routeName}){
    return context.router.pushAndPopUntil(route, predicate: (router) => router.settings.name == routeName);
  }
}
