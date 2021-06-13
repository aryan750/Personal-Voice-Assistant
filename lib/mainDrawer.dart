import 'package:simpleflutterapp/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:simpleflutterapp/AppStats.dart';
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
              color: Colors.blue[800],
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: ExactAssetImage('assets/index.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.data_usage),
              title: Text(
                'App Usage',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => AppStats()));
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer_outlined),
              title: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: null,
              //() {
              //   Navigator.push(context,
              //       new MaterialPageRoute(builder: (context) => Faq()));
              // },
            ),
          ],
        ),
      ),
    );
  }
}
