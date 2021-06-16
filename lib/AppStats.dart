import 'package:flutter/material.dart';
import 'package:app_usage/app_usage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:simpleflutterapp/mainDrawer.dart';
void main() => runApp(AppStats());

class AppStats extends StatefulWidget {
  @override
  _AppStatsState createState() => _AppStatsState();
}

class _AppStatsState extends State<AppStats> {
  List<AppUsageInfo> _infos = [];

  @override
  void initState() {
    super.initState();
  }

  void getUsageStats() async {
    try {
      DateTime endDate = new DateTime.now();
      DateTime startDate = endDate.subtract(Duration(hours: 1));
      List<AppUsageInfo> infoList = await AppUsage.getAppUsage(startDate, endDate);
      setState(() {_infos = infoList;});
      for (var info in infoList) {
        print(info.toString());
      }
    } on AppUsageException catch (exception) {
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: const Text('Application Usage Stats'),
          backgroundColor: Vx.hexToColor("#3c787e"),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: _infos.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(_infos[index].appName),
                  trailing: Text(_infos[index].usage.toString()));
            }),
        floatingActionButton: FloatingActionButton(
            onPressed: getUsageStats,
            backgroundColor: HexColor("#3c787e"),
            child: Icon(
              Icons.file_download,
              color: Colors.white,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        backgroundColor: Vx.hexToColor('#b8eff5'),
      ),
    );
  }
}
