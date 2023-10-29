
import 'package:SDB/presentation/ui/pages/widgets/rotate_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/service/constants/color.dart';

class CustomLoadingAnimation extends StatefulWidget {

  final double? size;
  final List<Color>? gradientColors;
  final double? thickness;

  const CustomLoadingAnimation({


    super.key,
    this.size,
    this.thickness,
    this.gradientColors,

  });




  @override
  State<CustomLoadingAnimation> createState() => _CustomLoadingAnimationState();




}

class _CustomLoadingAnimationState extends State<CustomLoadingAnimation>     with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();}


    @override
  Widget build(BuildContext context) {


    return RotateAnimation(
      controller: controller,
      data: Container(
        height: widget.size ?? 50.h,
        width: widget.size ?? 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient:  SweepGradient(colors: widget.gradientColors ?? [
            AppColors.white,
            AppColors.primaryColor,
          ]),
        ),
        child: Container(
          margin:  EdgeInsets.all(widget.thickness ?? 8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}


