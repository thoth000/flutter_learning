import 'package:flutter/material.dart';

class Hero2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String photo = 'images/thoth000.jpg';
    final Size displaySize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero2'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('遷移後💦'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: displaySize.width / 2,
              width: displaySize.width / 2,
              child: Hero(
                tag: photo,
                child: RaisedButton(
                  color: Color(0xFF6b48ff),
                  onPressed: () => Navigator.pop(context),
                  child: Image.asset(
                    photo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
