import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../domain/service/constants/assets.dart';
import '../../../../../domain/service/constants/color.dart';
import 'lang_modal_sheet.dart';

class CustomAppBar extends StatefulWidget {
  final bool? isMainAppBar;
final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomAppBar({super.key,required this.scaffoldKey,this.isMainAppBar});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return           Container(
      width: double.infinity,
      height: 75.h,
      color: AppColors.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0.sp,horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.isMainAppBar ?? false ? 8.horizontalSpace : 0.horizontalSpace,

            widget.isMainAppBar ?? false ? Padding(
              padding:  EdgeInsets.only(bottom: 7.0.sp),
              child: SvgPicture.asset(
                Assets.logoImageSvg,
                color: AppColors.white,
                width: 60.w,
                height: 32.h,
              ),
            ) :   Material(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primaryColor,
                child: InkWell(

                  borderRadius: BorderRadius.circular(100),
                  onTap: (){
                    context.router.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_left_outlined,size: 28.sp,color: AppColors.white,),
                  ),
                ),
              ),
            6.horizontalSpace,
            const Spacer(),
            Material(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.primaryColor,
              child: InkWell(

                borderRadius: BorderRadius.circular(100),
                onTap: (){
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search,size: 26.sp,color: AppColors.white,),
                ),
              ),
            ),
            widget.isMainAppBar ?? false ? 8.horizontalSpace : 0.horizontalSpace,
            widget.isMainAppBar ?? false ? Material(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.primaryColor,
              child: InkWell(

                borderRadius: BorderRadius.circular(100),
                onTap: (){
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) =>  const ShowDialogLanguage());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.language,size: 26.sp,color: AppColors.white,),
                ),
              ),
            ) : const SizedBox(),
            widget.isMainAppBar ?? false ? 8.horizontalSpace : 0.horizontalSpace,

            widget.isMainAppBar ?? false ?  Material(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.primaryColor,
              child: InkWell(

                borderRadius: BorderRadius.circular(100),
                onTap: (){
                  widget.scaffoldKey.currentState?.openDrawer();

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu,size: 26.sp,color: AppColors.white,),
                ),
              ),
            ) : SizedBox(),
          ],
        ),
      ),
    )
    ;
  }
}
