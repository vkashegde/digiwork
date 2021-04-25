import 'package:digiwork/constants.dart';
import 'package:digiwork/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({@required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: item.background),
            child: item.icon),
        SizedBox(
          width: 12,
        ),
        Container(
          child: Center(
              child: Text(
            item.title,
            style: kCalloutLabelStyle,
          )),
        ),
      ],
    );
  }
}
