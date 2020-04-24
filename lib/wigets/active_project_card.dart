import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveProjectCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color cardColor;
  final double loadingPercent;

  ActiveProjectCard({
    this.title,
    this.subTitle,
    this.cardColor,
    this.loadingPercent,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(15.0),
          height: 200,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(40.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  percent: loadingPercent,
                  radius: 75,
                  progressColor: Colors.white,
                  backgroundColor: Colors.white10,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    '${(loadingPercent * 100).round()}%',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '$subTitle',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
