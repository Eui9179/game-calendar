import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_calendar/UI/colorPlate.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'Calendar.dart';
import 'HomeBar.dart';
import 'Login.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorPlate.mainBackgroundColor,
    ));
    return MaterialApp(
      title: 'DOR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameCalendar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GameCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const onoff = 0;
    if (onoff == 1) {
      return Scaffold(
        appBar: const HomeBar(),
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
        )),
        backgroundColor: ColorPlate.mainBackgroundColor,
        body: Calendar(),
      );
    } else {
      return Login();
    }
  }
}
