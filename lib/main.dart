import 'package:digiwork/components/home_screen_navbar.dart';
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

class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(gradient: course.background),
          child: Padding(
            padding: EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
