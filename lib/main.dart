import 'package:digiwork/components/home_screen_navbar.dart';
import 'package:digiwork/components/lists/explore_course_list.dart';
import 'package:digiwork/components/sidebar_button.dart';
import 'package:digiwork/constants.dart';
import 'package:digiwork/model/course.dart';
import 'package:digiwork/screens/home_screen.dart';
import 'package:digiwork/screens/sidebar_screen.dart';
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
      home: HomeScreen(),
    );
  }
}
