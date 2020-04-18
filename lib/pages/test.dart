import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double big = 50;
    double normal = 30;
    double small = 20;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text('bigTextheyheyhey' ,style: TextStyle(fontSize: big),),
          Text('normal' ,style: TextStyle(fontSize: normal),),
          Text('small' ,style: TextStyle(fontSize: small),),
          Text(Hive.box('data').get('welcome'))
        ],
      ),
    );
  }
}