import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/service/constants/color.dart';

class ImagesIndicator extends StatefulWidget {

  final int? index;
  final int? length;
  const ImagesIndicator({super.key,this.length,this.index});

  @override
  State<ImagesIndicator> createState() => _ImagesIndicatorState();
}

class _ImagesIndicatorState extends State<ImagesIndicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        widget.length != 1 ? Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: AppColors.grey.withOpacity(0.4),
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  List.generate(widget.length! < 3 ? widget.length! : 3 , (index) =>
                     Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: 4.w,
                      height: 4.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (widget.index! < 3 ? widget.index : 3) == index ? AppColors.primaryColor : AppColors.blueOpacity),
                    )  ,)

                  ,
                ),
              ),
            ),
          ),
        ) : const SizedBox(),
      ],
    );
  }
}
