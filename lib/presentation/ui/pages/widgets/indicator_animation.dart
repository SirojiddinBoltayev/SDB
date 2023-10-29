import 'package:SDB/domain/service/constants/color.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Widget? widget;
  final bool isActive;
  final Color? activeColor;
  final Color? unActiveColor;

  const Indicator({
    Key? key,
    this.widget,
    this.activeColor,
    this.unActiveColor,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutQuad,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      padding:  EdgeInsets.symmetric(horizontal: isActive ? 8 : 2.0),

      decoration: BoxDecoration(
        color: isActive
            ? activeColor ?? AppColors.primaryColor
            : unActiveColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
            color: isActive
                ? activeColor ?? AppColors.primaryColor
                : unActiveColor ?? AppColors.white,
            width: isActive ? 2 : 1),

      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: widget,
      ),
    );
  }
}