import 'package:flutter/material.dart';
import 'package:task_planner/theme/color/color.dart';

class TopContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final EdgeInsets padding;

  TopContainer({this.padding, this.width, this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding != null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: LightColors.kDarkYellow,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child != null ? child : Container(),
    );
  }
}
