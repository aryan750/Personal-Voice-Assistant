import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simpleflutterapp/FAQ.dart';
import 'package:velocity_x/velocity_x.dart';

// import 'package:google_fonts/google_fonts.dart';

import 'package:simpleflutterapp/AppStats.dart';
import 'package:simpleflutterapp/mainDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alan Virtual Assistant',
      home: MyHomePage(title: 'AVA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    //init Alan with sample project id
    AlanVoice.addButton(
      "0514baacab3ae1d0e624b172214ae2ea2e956eca572e1d8b807a3e2338fdd0dc/stage",
      buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT,
    );
    void _navigateTo(String screen) {
      switch (screen) {
        case "appstats":
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppStats()),
          );
          break;
        case "home":
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
          break;
          case "faq":
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faq()),
          );
          break;
        case "back":
          Navigator.pop(context);
          break;
        default:
          print("Unknown screen: $screen");
      }
    }

    void _handleCommand(Map<String, dynamic> command) {
      switch (command["command"]) {
        case "navigation":
          _navigateTo(command["route"]);
          break;
        default:
          debugPrint("Unknown command: ${command}");
      }
    }

    AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Vx.hexToColor("#3c787e"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Say 'Hey Alan!' to start.", 
          style: TextStyle(color: HexColor("#3c787e")),

        ),
      ),
      backgroundColor: Vx.hexToColor('#b8eff5'),
    );
  }

  VxAnimatedBox buildVxAnimatedBox() => VxAnimatedBox();
}
