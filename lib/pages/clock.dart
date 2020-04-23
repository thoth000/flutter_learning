import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_learning/change_notifier.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  void initState() {
    super.initState();
    var clock = Provider.of<ClockNotifier>(context,listen:false);
    Timer.periodic(Duration(seconds: 1), (t)=>clock.reload(t));
  }

  @override
  Widget build(BuildContext context) {
    final clock = Provider.of<ClockNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('クロック'),
      ),
      body: Center(
        child: Text(DateFormat("yyyy:MM:dd:mm:ss").format(clock.time),style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
