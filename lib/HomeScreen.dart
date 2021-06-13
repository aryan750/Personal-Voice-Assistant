import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:simpleflutterapp/AppStats.dart';
import 'package:simpleflutterapp/mainDrawer.dart';
import 'package:simpleflutterapp/utils/ai_util.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alan Virtual Assistant',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
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
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(
                LinearGradient(colors: [
                  AIUtil.primaryColor1,
                  AIUtil.primaryColor2,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              )
              .make()
        ],
      ),
      appBar: AppBar(
        title: "Alan VA"
            .text
            .bold
            .italic
            .white
            .xl3
            .fontFamily('fonts/ViaodaLibre-Regular.ttf')
            .make()
        // .shimmer(
        //   primaryColor: Vx.blue800,
        //   secondaryColor: Colors.white,
        // ),
        ,
        backgroundColor: Vx.blue500,
        elevation: 0.0,
        centerTitle: true,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.push(
      //         context, new MaterialPageRoute(builder: (context) => AppStats()));
      //   },
      //   label: const Text('App Stats'),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Say Hi to Alan!',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  VxAnimatedBox buildVxAnimatedBox() => VxAnimatedBox();
}
