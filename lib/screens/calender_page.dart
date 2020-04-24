import 'package:flutter/material.dart';
import 'package:task_planner/date_list.dart';
import 'package:task_planner/screens/create_task_page.dart';
import 'package:task_planner/theme/color/color.dart';
import 'package:task_planner/wigets/back_button.dart';
import 'package:task_planner/wigets/calender_date.dart';
import 'package:task_planner/wigets/task_container.dart';

class CalenderPage extends StatelessWidget {
  _buildDashedText() => Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(
          '---------------------',
          maxLines: 1,
          style: TextStyle(
            letterSpacing: 5.0,
            color: Colors.black12,
            fontSize: 20,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              BackButton2(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: LightColors.kDarkBlue,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: LightColors.kGreen,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(30)),
                    ),
                    child: FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateTaskPage())),
                      child: Center(
                        child: Text(
                          'Add task',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(
                    'Productive Day, RnD1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'April, 23',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: LightColors.kDarkBlue,
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 58,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: days.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CalendarDate(
                        day: days[index],
                        colorDay:
                            index == 0 ? LightColors.kRed : Colors.black54,
                        date: dates[index],
                        colorDate: index == 0
                            ? LightColors.kRed
                            : LightColors.kDarkBlue,
                      );
                    }),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: ListView.builder(
                              itemCount: time.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${time[index]} ${time[index] > 8 ? 'PM' : 'AM'}',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                            flex: 5,
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: <Widget>[
                                _buildDashedText(),
                                TaskContainer(
                                  title: 'Project Rnd',
                                  subTitle:
                                      'Discuss with the colleagues about the future plan',
                                  boxColor: LightColors.kLightYellow2,
                                ),
                                _buildDashedText(),
                                TaskContainer(
                                  title: 'Work on Chat App',
                                  subTitle: 'Add feature login',
                                  boxColor: LightColors.kPalePink,
                                ),
                                TaskContainer(
                                  title: 'Design UI for Foods App',
                                  subTitle: 'Design menu screen',
                                  boxColor: LightColors.kLightGreen,
                                ),
                                TaskContainer(
                                  title: 'Call',
                                  subTitle: 'Call to mom',
                                  boxColor: LightColors.kLavender,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
