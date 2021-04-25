import 'package:flutter/material.dart';

class SidebarItem {
  SidebarItem({this.title, this.background, this.icon});
  String title;
  LinearGradient background;
  Icon icon;
}

var sidebarItem = [
  SidebarItem(
      title: "Home",
      background: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff00aeff), Color(0xff0076ff)]),
      icon: Icon(
        Icons.home,
        color: Colors.white,
      )),
  SidebarItem(
      title: "Courses",
      background: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff00aeff), Color(0xff0076ff)]),
      icon: Icon(
        Icons.library_books,
        color: Colors.white,
      )),
  SidebarItem(
      title: "Billing",
      background: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff00aeff), Color(0xff0076ff)]),
      icon: Icon(
        Icons.credit_card,
        color: Colors.white,
      )),
  SidebarItem(
      title: "Settings",
      background: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff00aeff), Color(0xff0076ff)]),
      icon: Icon(
        Icons.credit_card,
        color: Colors.white,
      )),
];
