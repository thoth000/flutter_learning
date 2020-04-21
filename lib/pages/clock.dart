import 'package:flutter/material.dart';
import '../change_notifier.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  int dur = 0;
  void initState() {
    super.initState();
    var date = DateTime.now();
    //今,昔の順番でDuration　昔から今までの時差をとる
    setState(() => dur = DateTime.now()
        .difference(DateTime(date.year, date.month, date.day, 0, 0))
        .inMinutes);
  }

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('クロック'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(DateFormat("yyyy年MM月dd日HH時mm分").format(date)),
            Text('もう'+dur.toString()+'分たった'),
          ],
        ),
      ),
    );
  }
}
