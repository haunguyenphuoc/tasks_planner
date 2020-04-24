import 'package:flutter/material.dart';
import 'package:task_planner/theme/color/color.dart';
import 'package:task_planner/wigets/back_button.dart';
import 'package:task_planner/wigets/text_field.dart';
import 'package:task_planner/wigets/top_container.dart';

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
              width: width,
              child: Column(
                children: <Widget>[
                  BackButton2(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Create new task',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField2(label: 'Title'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: TextField2(
                                label: 'Date',
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: LightColors.kGreen,
                              child: Icon(
                                Icons.calendar_today,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: TextField2(
                            label: 'Start Time',
                            icon: Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                        SizedBox(width: 40),
                        Expanded(
                          child: TextField2(
                            label: 'End Time',
                            icon: Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextField2(
                      label: 'Description',
                      maxLines: 3,
                      minLines: 3,
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                            ),
                          ),
                          Wrap(
                            //alignment: WrapAlignment.start,
                            runSpacing: 0.0,
                            spacing: 10.0,
                            children: <Widget>[
                              Chip(
                                label: Text('SPORT APP'),
                                labelStyle: TextStyle(color: Colors.white),
                                backgroundColor: LightColors.kRed,
                              ),
                              Chip(
                                label: Text('MEDICAL APP'),
                              ),
                              Chip(
                                label: Text('RENT APP'),
                              ),
                              Chip(
                                label: Text('NOTE APP'),
                              ),
                              Chip(
                                label: Text('GAMING PLATFORM APP'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: width,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Create Task',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    width: width - 40,
                    decoration: BoxDecoration(
                        color: LightColors.kGreen,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
