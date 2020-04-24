import 'package:flutter/material.dart';
import 'package:task_planner/theme/color/color.dart';

class TaskColumn extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final String title;
  final String subtitle;

  TaskColumn({this.icon, this.backgroundColor, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) => Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundColor: backgroundColor,
            child: Icon(
              icon,
              size: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16.0,
                  color: LightColors.kDarkBlue,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      );
}
