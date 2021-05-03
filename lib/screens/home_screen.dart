import 'package:digiwork/components/home_screen_navbar.dart';
import 'package:digiwork/components/lists/explore_course_list.dart';
import 'package:digiwork/components/lists/recent_course_list.dart';
import 'package:digiwork/constants.dart';
import 'package:digiwork/screens/sidebar_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset> sidebarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sidebarAnimationCOntroller;
  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();
    sidebarAnimationCOntroller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(00, 0),
    ).animate(CurvedAnimation(
        parent: sidebarAnimationCOntroller, curve: Curves.easeInOut));

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: sidebarAnimationCOntroller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    super.dispose();
    sidebarAnimationCOntroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenNavBar(
                    triggerAnimation: () {
                      sidebarAnimationCOntroller.forward();
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });
                    },
                  ),
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
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 16),
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
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      onTap: () {
                        sidebarAnimationCOntroller.reverse();
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });
                      },
                      child: Container(
                        color: Color.fromRGBO(36, 38, 41, 0.5),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: sidebarAnimation,
                    child: SafeArea(
                      child: SidebarScreen(),
                      bottom: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
