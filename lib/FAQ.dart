import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:simpleflutterapp/HomeScreen.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:simpleflutterapp/AppStats.dart';

// import 'package:simpleflutterapp/';

import 'package:simpleflutterapp/mainDrawer.dart';

class faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.hexToColor('#b8eff5'),
        drawer: MainDrawer(),
        appBar: AppBar(
          title: const Text('FAQ'),
          backgroundColor: Vx.hexToColor("#3c787e"),
          elevation: 0.0,
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                  child: ListTile(
                title: Text(
                  'How do I talk to Alan?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, color: HexColor("#3c787e")),
                ),
                subtitle: Text(
                    'To ask something, either press the Alan button at the bottom right of your screen or say "Hey Alan". You will see a change in the color of the button, which means Alan is now listening to your query.'),
              )),
              Card(
                  child: ListTile(
                title: Text(
                  'What kind of queries can Alan answer?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, color: HexColor("#3c787e")),
                ),
                subtitle: Text(
                    'Alan can answer about Weather forecast, News broadcast, Navigation, App Usage of the User and do basic calculations.'),
              )),
              Card(
                  child: ListTile(
                title: Text(
                  'How many languages can Alan talk in?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, color: HexColor("#3c787e")),
                ),
                subtitle: Text(
                    'Alan can currently reply in 4 different languages which are English, Spanish, Italian and French.'),
              )),
              Card(
                  child: ListTile(
                title: Text(
                  'How to deactivate Alan?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, color: HexColor("#3c787e")),
                ),
                subtitle: Text(
                    'Either Click or tap the Alan button or Say one of the following phrases: "Thanks Alan " or "Thank you Alan" or "Stop Alan".'),
              )),
              Card(
                  child: ListTile(
                title: Text(
                  'Who are the developers of AVA?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, color: HexColor("#3c787e")),
                ),
                subtitle: Text(
                    'Vidya Rupak and Aryan Gupta made this application for their minor project.'),
              )),
            ],
          ),
        ));
  }
}
