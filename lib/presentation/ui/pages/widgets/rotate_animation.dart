import 'dart:math';

import 'package:flutter/material.dart';


class RotateAnimation extends StatefulWidget {
  final Widget data;
  final AnimationController controller;

  const RotateAnimation({
    Key? key,
    required this.data,
    required this.controller,
  }) : super(key: key);

  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      child: widget.data,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: widget.controller.value * 2 * pi,
          child: child!,
        );
      },
    );
  }
}