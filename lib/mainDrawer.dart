import 'package:simpleflutterapp/HomeScreen.dart';
import 'package:simpleflutterapp/AppStats.dart';
import 'package:simpleflutterapp/FAQ.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'package:velocity_x/velocity_x.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: HexColor("#3c787e"),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/logo.svg',
                      fit: BoxFit.scaleDown,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: HexColor("#3c787e"),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  color: HexColor("#3c787e"),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.data_usage,
                color: HexColor("#3c787e"),
              ),
              title: Text(
                'App Usage',
                style: TextStyle(
                  fontSize: 18,
                  color: HexColor("#3c787e"),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => AppStats()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer_outlined,
                color: HexColor("#3c787e"),
              ),
              title: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 18,
                  color: HexColor("#3c787e"),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => faq()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
