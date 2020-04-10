import 'package:flutter/material.dart';

class Hero2Page extends StatefulWidget {
  @override
  _Hero2PageState createState() => _Hero2PageState();
}

class _Hero2PageState extends State<Hero2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'same',
            child: Container(
              height: 200,
              width: 200,
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}