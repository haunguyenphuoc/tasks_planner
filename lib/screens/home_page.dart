import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_planner/screens/calender_page.dart';
import 'package:task_planner/theme/color/color.dart';
import 'package:task_planner/wigets/active_project_card.dart';
import 'package:task_planner/wigets/task_column.dart';
import 'package:task_planner/wigets/top_container.dart';

class HomePage extends StatelessWidget {
  Widget _buildAvatar() => CircularPercentIndicator(
        radius: 90.0,
        percent: 0.75,
        backgroundColor: LightColors.kDarkYellow,
        animation: true,
        //lineWidth: 5.0,
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: LightColors.kRed,
        center: CircleAvatar(
          backgroundColor: LightColors.kBlue,
          radius: 35.0,
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
      );
  Widget _buildSubHeading(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
          color: LightColors.kDarkBlue,
        ),
      );
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              width: width,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        size: 30.0,
                        color: LightColors.kDarkBlue,
                      ),
                      Icon(
                        Icons.search,
                        size: 30.0,
                        color: LightColors.kDarkBlue,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _buildAvatar(),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Nguyen Phuoc Hau',
                              //textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: LightColors.kDarkBlue,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'App developer',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      //color: Colors.red,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _buildSubHeading('My Tasks'),
                              GestureDetector(
                                onTap: () {
                                  debugPrint('on Tap');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CalenderPage()),
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: LightColors.kGreen,
                                  child: Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Column(
                            children: <Widget>[
                              TaskColumn(
                                icon: Icons.alarm,
                                backgroundColor: LightColors.kRed,
                                title: 'To Do',
                                subtitle: '5 tasks now, 1 started',
                              ),
                              SizedBox(height: 15.0),
                              TaskColumn(
                                icon: Icons.blur_circular,
                                backgroundColor: LightColors.kDarkYellow,
                                title: 'In Progress',
                                subtitle: '1 task now, 1 started',
                              ),
                              SizedBox(height: 15.0),
                              TaskColumn(
                                icon: Icons.check_circle_outline,
                                backgroundColor: LightColors.kBlue,
                                title: 'Done',
                                subtitle: '18 tasks now, 13 started',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), // My tasks
                    Container(
                      //width: width,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildSubHeading('Active Projects'),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              ActiveProjectCard(
                                title: 'Notes App',
                                subTitle: '9 hours process',
                                loadingPercent: 0.25,
                                cardColor: LightColors.kGreen,
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectCard(
                                title: 'Make History Notes',
                                subTitle: '20 hours process',
                                loadingPercent: 0.5,
                                cardColor: LightColors.kBlue,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              ActiveProjectCard(
                                title: 'Online FLutter Course',
                                subTitle: '23 hours process',
                                loadingPercent: 0.67,
                                cardColor: LightColors.kRed,
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectCard(
                                title: 'English App',
                                subTitle: '1 hours process',
                                loadingPercent: 0.45,
                                cardColor: LightColors.kDarkYellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), // for active projects
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
