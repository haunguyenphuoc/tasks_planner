import 'package:flutter/material.dart';

class CalendarDate extends StatelessWidget {
  final String day;
  final String date;
  final Color colorDay;
  final Color colorDate;

  CalendarDate({this.day, this.colorDay, this.date, this.colorDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: <Widget>[
          Text(
            '$day',
            style: TextStyle(
              color: colorDay,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$date',
            style: TextStyle(
              color: colorDate,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
