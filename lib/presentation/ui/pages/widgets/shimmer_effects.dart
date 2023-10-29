
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../domain/service/constants/color.dart';
class ShimmerEffects extends StatefulWidget {
  final Widget child;
  final double? borderRadius;
  const ShimmerEffects({super.key,required this.child,this.borderRadius});

  @override
  State<ShimmerEffects> createState() => _ShimmerEffectsState();
}

class _ShimmerEffectsState extends State<ShimmerEffects> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        enabled: true,
        baseColor: AppColors.grey.withOpacity(0.3),
        highlightColor: AppColors.white.withOpacity(0.4),
        child: ClipRRect(borderRadius: BorderRadius.circular(0),child: widget.child));
  }
}
