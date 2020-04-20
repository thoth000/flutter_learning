import 'package:flutter/material.dart';
import '../change_notifier.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  void initState(){
    super.initState();
    //今,昔の順番でDuration　昔から今までの時差をとる
    var dur=DateTime.now().difference(DateTime(2020,4,20,00,00));
    //時差をすべて分に変換する
    print(dur.inMinutes);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('クロック'),
      ),
      body: Center(
        child: Text(DateFormat("yyyy年MM月dd日HH時mm分").format(DateTime(2020,4,20,00,00))),
      ),
    );
  }
}
