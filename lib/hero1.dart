import 'package:flutter/material.dart';
import 'hero2.dart';

class Hero1Page extends StatefulWidget {
  @override
  _Hero1PageState createState() => _Hero1PageState();
}

class _Hero1PageState extends State<Hero1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('遷移前'),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Hero(
            tag: 'same',
            child: FlatButton(child: FlutterLogo(),onPressed: this.,),
          ),
        ),
      ),
    );
  }
}
