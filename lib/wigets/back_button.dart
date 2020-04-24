import 'package:flutter/material.dart';
import 'package:task_planner/theme/color/color.dart';

class BackButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'back button',
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: LightColors.kDarkBlue,
          ),
        ),
      ),
    );
  }
}
