import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//here
class MyApp extends StatelessWidget {
  var something;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Container(
                width: 42.0,
                height: 42.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff00aeff), Color(0xff0076ff)])),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            SizedBox(
              width: 12,
            ),
            Container(
              child: Center(
                  child: Text(
                'Home',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF242629)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
