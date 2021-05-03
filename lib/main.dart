import 'package:digiwork/components/home_screen_navbar.dart';
import 'package:digiwork/components/lists/explore_course_list.dart';
import 'package:digiwork/components/sidebar_button.dart';
import 'package:digiwork/constants.dart';
import 'package:digiwork/model/course.dart';
import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';
import 'components/lists/recent_course_list.dart';
import 'components/searchField_widget.dart';

void main() {
  runApp(MyApp());
}

//here
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recent",
                        style: kLargeTitleStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '23 cources, more coming ',
                        style: kSubtitleStyle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RecentCourseList(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Explore",
                        style: kTitle1Style,
                      )
                    ],
                  ),
                ),
                ExploreCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
